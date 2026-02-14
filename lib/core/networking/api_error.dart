
class ApiError{
  final String message;
  final int? StatusCode;

  ApiError({required this.message, this.StatusCode});

  String toString(){
    return 'ApiError{message: $message}';
}

}