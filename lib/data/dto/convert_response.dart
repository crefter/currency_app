import 'package:flutter/cupertino.dart';

@immutable
class ConvertResponse {
  late final ConversionResponse _conversion;

  ConversionResponse get conversion => _conversion;

  @override
  int get hashCode => _conversion.hashCode;

  ConvertResponse({
    required ConversionResponse conversion,
  }) {
    _conversion = conversion;
  }

  ConvertResponse.fromJson(Map<String, dynamic> json) {
    _conversion = ConversionResponse.fromJson(
      json['conversion'] as Map<String, dynamic>,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConvertResponse &&
          runtimeType == other.runtimeType &&
          _conversion == other._conversion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['conversion'] = _conversion.toJson();
    return map;
  }
}

@immutable
class ConversionResponse {
  late final double _amount;
  late final String _from;
  late final String _to;
  late final double _result;

  double get amount => _amount;

  String get from => _from;

  String get to => _to;

  double get result => _result;

  @override
  int get hashCode =>
      _amount.hashCode ^ _from.hashCode ^ _to.hashCode ^ _result.hashCode;

  ConversionResponse({
    required double amount,
    required String from,
    required String to,
    required double result,
  }) {
    _amount = amount;
    _from = from;
    _to = to;
    _result = result;
  }

  ConversionResponse.fromJson(Map<String, dynamic> json) {
    _amount = json['amount'] as double;
    _from = json['from'] as String;
    _to = json['to'] as String;
    _result = json['result'] as double;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConversionResponse &&
          runtimeType == other.runtimeType &&
          _amount == other._amount &&
          _from == other._from &&
          _to == other._to &&
          _result == other._result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['from'] = _from;
    map['to'] = _to;
    map['result'] = _result;
    return map;
  }
}
