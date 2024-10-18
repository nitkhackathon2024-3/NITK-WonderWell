import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:wisdom_well/applications/auth/auth_bloc.dart';
import 'package:wisdom_well/applications/trees/trees_bloc.dart';
import 'package:wisdom_well/core/network/dio_client.dart';
import 'package:wisdom_well/core/network/network_client.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/core/routes/auto_router.dart';
import 'package:wisdom_well/core/services/authenticator.dart';
import 'package:wisdom_well/core/services/database_provider.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/fetch_trees_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/repositories/fetch_trees_repository_impl.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/fetch_trees_repository.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/fetch_trees.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    // Network Client
    sl.registerLazySingleton(() => Dio());
    sl.registerLazySingleton<NetworkClient>(() => DioClient(dio: sl()));

    // Network Info
    sl.registerSingleton(Connectivity());
    sl.registerSingleton(InternetConnectionChecker());
    sl.registerSingleton<NetworkInfo>(
      NetworkInfoImpl(connectivity: sl(), internetConnectionChecker: sl()),
    );

    // Auto Router
    sl.registerLazySingleton(() => AppRouter());

    // Datasources
    sl.registerLazySingleton<FetchTreesRemoteDs>(
      () => FetchTreesRemoteDsImpl(networkClient: sl()),
    );

    // Repositories
    sl.registerLazySingleton<FetchTreesRepository>(
      () => FetchTreesRepositoryImpl(
        networkInfo: sl(),
        fetchTreesRemoteDs: sl(),
      ),
    );

    // Use Cases
    sl.registerLazySingleton(() => FetchTrees(sl()));

    // Bloc
    sl.registerFactory(() => AuthBloc());
    sl.registerFactory(() => TreesBloc(fetchTrees: sl()));

    //
    sl.registerSingleton(Authenticator());
    sl.registerSingleton(DatabaseProvider());
  }
}
