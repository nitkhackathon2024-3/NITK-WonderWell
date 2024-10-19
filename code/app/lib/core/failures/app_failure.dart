import 'package:equatable/equatable.dart';
import 'package:wisdom_well/core/helpers/debug_logger.dart';
import 'package:wisdom_well/core/failures/failure_messages.dart';
import 'package:wisdom_well/core/failures/failure_type.dart';

class AppFailure extends Equatable {
  final FailureType? failureType;
  final String? message;

  const AppFailure({this.failureType, this.message});

  String? getErrorMessage() {
    switch (failureType) {
      case Server():
        {
          String? errorMessage =
              (failureType as Server).failureResponse?.getErrorMessage();
          if (errorMessage != null) {
            debugLog(errorMessage);
            return errorMessage;
          }
          return kServerError;
        }
      case NotConnectedToNetwork():
        {
          return kNotConnectedToNetworkError;
        }
      case Cache():
        {
          String? errorMessage =
              (failureType as Server).failureResponse?.getErrorMessage();
          if (errorMessage != null) {
            debugLog(errorMessage);
            return errorMessage;
          }
          return kCacheFailureError;
        }
      case NoGeocodingMatch():
        {
          return message;
        }
      case null:
        return message;
    }
  }

  @override
  String toString() {
    return "AppFailure $failureType $message";
  }
  
  @override
  List<Object?> get props => [failureType];
}
