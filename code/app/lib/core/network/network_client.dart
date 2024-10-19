import 'dart:async';

abstract class NetworkClient {
  FutureOr<dynamic> getUri({required Uri uri});
  FutureOr<dynamic> postUri({required Uri uri, dynamic body});
  FutureOr<dynamic> patchUri({required Uri uri, dynamic body});
  FutureOr<dynamic> putUri({required Uri uri, dynamic body});
  FutureOr<dynamic> deleteUri({required Uri uri, dynamic body});
  dynamic formDataFromMap({required Map<String, dynamic> body});
  FutureOr<dynamic> multipartFileFromFile({required String path});

}
