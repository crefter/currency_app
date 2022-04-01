import 'package:currency_app/data/api/convert_api.dart';
import 'package:currency_app/data/datasource/local/convert_local_data_source.dart';
import 'package:currency_app/data/datasource/remote/convert_remote_data_source.dart';
import 'package:currency_app/data/dto/convert_response.dart';
import 'package:currency_app/data/errors/convert_api_exception.dart';
import 'package:currency_app/domain/entities/conversion.dart';
import 'package:currency_app/domain/entities/currency.dart';
import 'package:currency_app/domain/repositories/convert_repository.dart';

class ConvertRepositoryImpl implements ConvertRepository {
  final ConvertLocalDataSource _localDataSource;
  final ConvertRemoteDataSource _remoteDataSource;

  ConvertRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Conversion> convert({
    required double amount,
    required Currency from,
    required Currency to,
    Output? output,
  }) async {
    late final ConvertResponse? convertResponse;
    try {
      convertResponse = await _remoteDataSource.getResponse(
        amount: amount,
        from: from.name,
        to: to.name,
        output: output,
      );

      return Conversion(
        convertResponse.conversion.amount,
        convertResponse.conversion.from,
        convertResponse.conversion.to,
        convertResponse.conversion.result,
      );
    } on ConvertApiException {
      convertResponse = await _localDataSource.getResponse(
        amount: amount,
        from: from.name,
        to: to.name,
        output: output,
      );
      if (convertResponse == null) {
        rethrow;
      }
      return Conversion(
        convertResponse.conversion.amount,
        convertResponse.conversion.from,
        convertResponse.conversion.to,
        convertResponse.conversion.result,
      );
    }
  }

  @override
  Future<void> save(Conversion conversion) async {
    final conversionResponse = ConversionResponse(
        amount: conversion.amount,
        from: conversion.from,
        to: conversion.to,
        result: conversion.result,
      );
    final convertResponse = ConvertResponse(
      conversion: conversionResponse,
    );
    await _localDataSource.save(convertResponse);
  }
}
