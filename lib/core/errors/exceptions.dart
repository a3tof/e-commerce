class customException implements Exception {
  final String message;
  customException({required this.message});

  @override
  String toString() => message;
}
