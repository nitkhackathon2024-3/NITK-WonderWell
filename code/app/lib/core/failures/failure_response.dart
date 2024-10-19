class FailureResponse {
  final String? error;
  final int? errorCode;

  FailureResponse({this.error, this.errorCode});

  factory FailureResponse.fromJson(Map<String, dynamic> json) =>
      FailureResponse(error: json['message'], errorCode: json['error_code']);

  String? getErrorMessage() => error;

  @override
  String toString() {
    return "Error Response: $error $errorCode";
  }
}
