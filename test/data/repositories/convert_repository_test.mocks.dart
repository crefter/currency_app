// Mocks generated by Mockito 5.2.0 from annotations
// in currency_app/test/data/repositories/convert_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:currency_app/data/api/convert_api.dart' as _i7;
import 'package:currency_app/data/datasource/local/convert_local_data_source.dart'
    as _i8;
import 'package:currency_app/data/datasource/remote/convert_remote_data_source.dart'
    as _i9;
import 'package:currency_app/data/dto/convert_response.dart' as _i3;
import 'package:currency_app/domain/entities/conversion.dart' as _i2;
import 'package:currency_app/domain/entities/currency.dart' as _i6;
import 'package:currency_app/domain/repositories/convert_repository.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeConversion_0 extends _i1.Fake implements _i2.Conversion {}

class _FakeConvertResponse_1 extends _i1.Fake implements _i3.ConvertResponse {}

/// A class which mocks [ConvertRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockConvertRepository extends _i1.Mock implements _i4.ConvertRepository {
  MockConvertRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Conversion> convert(
          {double? amount,
          _i6.Currency? from,
          _i6.Currency? to,
          _i7.Output? output}) =>
      (super.noSuchMethod(
              Invocation.method(#convert, [],
                  {#amount: amount, #from: from, #to: to, #output: output}),
              returnValue: Future<_i2.Conversion>.value(_FakeConversion_0()))
          as _i5.Future<_i2.Conversion>);
  @override
  _i5.Future<void> save(_i2.Conversion? conversion) =>
      (super.noSuchMethod(Invocation.method(#save, [conversion]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
}

/// A class which mocks [ConvertLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockConvertLocalDataSource extends _i1.Mock
    implements _i8.ConvertLocalDataSource {
  MockConvertLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.ConvertResponse?> getResponse(
          {double? amount, String? from, String? to, _i7.Output? output}) =>
      (super.noSuchMethod(
              Invocation.method(#getResponse, [],
                  {#amount: amount, #from: from, #to: to, #output: output}),
              returnValue: Future<_i3.ConvertResponse?>.value())
          as _i5.Future<_i3.ConvertResponse?>);
  @override
  _i5.Future<void> save(_i3.ConvertResponse? response) =>
      (super.noSuchMethod(Invocation.method(#save, [response]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
}

/// A class which mocks [ConvertRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockConvertRemoteDataSource extends _i1.Mock
    implements _i9.ConvertRemoteDataSource {
  MockConvertRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.ConvertResponse> getResponse(
          {double? amount, String? from, String? to, _i7.Output? output}) =>
      (super.noSuchMethod(
              Invocation.method(#getResponse, [],
                  {#amount: amount, #from: from, #to: to, #output: output}),
              returnValue:
                  Future<_i3.ConvertResponse>.value(_FakeConvertResponse_1()))
          as _i5.Future<_i3.ConvertResponse>);
}
