class CurrencyApiException implements Exception {
  final String? code;
  final String? description;

  CurrencyApiException(this.code, this.description);
}