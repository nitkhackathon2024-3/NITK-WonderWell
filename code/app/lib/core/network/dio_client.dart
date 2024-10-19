import 'dart:async';
import 'package:dio/dio.dart';
import 'package:wisdom_well/core/helpers/debug_logger.dart';
import 'package:wisdom_well/core/exceptions/app_exception.dart';
import 'package:wisdom_well/core/exceptions/exception_type.dart';
import 'package:wisdom_well/core/helpers/extensions.dart';
import 'package:wisdom_well/core/failures/failure_response.dart';
import 'package:wisdom_well/core/network/network_client.dart';

class DioClient implements NetworkClient {
  final Dio dio;
  static const connectTimeout = Duration(seconds: 10);
  static const receiveTimeout = Duration(seconds: 10);

  DioClient(
      {required this.dio,}) {
    _initDioParams();
  }

  void _initDioParams() {
    dio
      ..options = BaseOptions(
          connectTimeout: connectTimeout, receiveTimeout: receiveTimeout)
      ..interceptors.add(InterceptorsWrapper(
          onRequest: _requestInterceptor,
          onResponse: _responseInterceptor,
          onError: _errorInterceptor));
  }

  Future<void> _requestInterceptor(
      RequestOptions requestOptions, RequestInterceptorHandler handler) async {
    debugLog("Requesting ${requestOptions.uri}");

    debugLog("Headers : ${requestOptions.headers}");
    debugLog("Data : ${requestOptions.data}");

    return handler.next(requestOptions);
  }

  void _responseInterceptor(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    debugLog("Response ${response.statusCode} from ${response.realUri}");
    debugLog("Headers : ${response.headers}");
    debugLog("Data : ${response.data}");

    return handler.next(response);
  }

  Future<void> _errorInterceptor(
      DioException exception, ErrorInterceptorHandler handler) async {
    debugLog(
        "Network ${exception.type.toString()} error from ${exception.requestOptions.uri}");
    debugLog("Data : ${exception.response?.data}");
    debugLog(
        "${exception.response?.statusCode} | Method : ${exception.requestOptions.method}");

    return handler.next(exception);
  }

  FutureOr _tryCatchRequest(Future Function() request) async {
    try {
      return await request();
    } on DioException catch (e) {
      await _processException(e);
    }
  }

  @override
  FutureOr deleteUri({required Uri uri, dynamic body}) async {
    return await _tryCatchRequest(() => dio.deleteUri(uri, data: body));
  }

  @override
  FutureOr getUri({required Uri uri}) async {
    return await _tryCatchRequest(() => dio.getUri(uri));
  }

  @override
  FutureOr patchUri({required Uri uri, dynamic body}) async {
    return await _tryCatchRequest(() => dio.patchUri(uri, data: body));
  }

  @override
  FutureOr postUri({required Uri uri, dynamic body}) async {
    return await _tryCatchRequest(() => dio.postUri(uri, data: body));
  }

  @override
  FutureOr putUri({required Uri uri, dynamic body}) async {
    return await _tryCatchRequest(() => dio.putUri(uri, data: body));
  }

  @override
  dynamic formDataFromMap({required Map<String, dynamic> body}) {
    return FormData.fromMap(body);
  }

  @override
  FutureOr<dynamic> multipartFileFromFile({required String path}) {
    return MultipartFile.fromFile(path);
  }

  Future<void> _processException(DioException exception) async {
    if (exception.response?.data is Map) {
      FailureResponse failureResponse =
          FailureResponse.fromJson(exception.response!.data);
      debugLog(failureResponse);

      if (exception.response?.statusCode != null) {
        if (exception.response!.statusCode!.inRange(400, 499)) {
          throw AppException(
              exceptionType: const ExceptionType.server(),
              failureResponse: failureResponse);
        }
      }
    }
  }
}
