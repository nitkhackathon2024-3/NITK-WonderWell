import 'package:wisdom_well/core/exceptions/exception_type.dart';
import 'package:wisdom_well/core/failures/app_failure.dart';
import 'package:wisdom_well/core/failures/failure_response.dart';
import 'package:wisdom_well/core/failures/failure_type.dart' hide Server;

class AppException implements Exception {
  final ExceptionType? exceptionType;
  final FailureResponse? failureResponse;

  AppException({this.exceptionType, this.failureResponse});

  static AppFailure? handleException(AppException exception) {
    return switch (exception.exceptionType) {
      ServerException() =>
        AppFailure(failureType: FailureType.server(exception.failureResponse)),
      CacheException() =>
        AppFailure(failureType: FailureType.cache(exception.failureResponse)),
      null => null
    };
  }
}
