import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:wisdom_well/core/helpers/debug_logger.dart';

abstract class NetworkInfo {
  bool get isConnected;
}

class NetworkInfoImpl with Disposable implements NetworkInfo {
  bool hasConnection = false;
  StreamSubscription<List<ConnectivityResult>>? subscription;

  final Connectivity connectivity;
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImpl({
    required this.connectivity,
    required this.internetConnectionChecker,
  }) {
    subscription = connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> results) async {
      if (!results.contains(ConnectivityResult.none)) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
      debugLog("Connection Status : $hasConnection");
    });
  }

  @override
  bool get isConnected => hasConnection;

  @override
  FutureOr onDispose() async {
    await subscription?.cancel();
  }
}
