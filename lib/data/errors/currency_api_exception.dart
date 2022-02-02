class CurrencyApiException implements Exception {
  final int? code;
  final String? description;

  CurrencyApiException(this.code, this.description);
}