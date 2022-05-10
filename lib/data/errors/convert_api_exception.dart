import 'package:flutter/foundation.dart';
@immutable
class ConvertApiException implements Exception {
  final String? message;
  final String? description;

  @override
  int get hashCode => message.hashCode ^ description.hashCode;

  const ConvertApiException(this.message, this.description);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConvertApiException &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          description == other.description;
}