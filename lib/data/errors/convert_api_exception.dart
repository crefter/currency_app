class ConvertApiException implements Exception {
  final String? message;
  final String? description;

  ConvertApiException(this.message, this.description);
}