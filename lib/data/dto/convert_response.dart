class ConvertResponse {

  ConvertResponse({
    required Conversion conversion,
  }) {
    _conversion = conversion;
  }

  ConvertResponse.fromJson(dynamic json) {
    _conversion = (json['conversion'] != null
        ? Conversion.fromJson(json['conversion'])
        : null)!;
  }

  late final Conversion _conversion;

  Conversion get conversion => _conversion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['conversion'] = _conversion.toJson();
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConvertResponse &&
          runtimeType == other.runtimeType &&
          _conversion == other._conversion;

  @override
  int get hashCode => _conversion.hashCode;
}

class Conversion {

  Conversion({
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

  Conversion.fromJson(dynamic json) {
    _amount = json['amount'];
    _from = json['from'];
    _to = json['to'];
    _result = json['result'];
  }

  late final double _amount;
  late final String _from;
  late final String _to;
  late final double _result;

  double get amount => _amount;

  String get from => _from;

  String get to => _to;

  double get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['from'] = _from;
    map['to'] = _to;
    map['result'] = _result;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Conversion &&
          runtimeType == other.runtimeType &&
          _amount == other._amount &&
          _from == other._from &&
          _to == other._to &&
          _result == other._result;

  @override
  int get hashCode =>
      _amount.hashCode ^ _from.hashCode ^ _to.hashCode ^ _result.hashCode;
}
