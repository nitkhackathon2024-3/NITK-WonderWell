import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:wisdom_well/applications/auth/auth_bloc.dart';
import 'package:wisdom_well/applications/specific_tree/tree_bloc.dart';
import 'package:wisdom_well/applications/trees/trees_bloc.dart';
import 'package:wisdom_well/core/network/dio_client.dart';
import 'package:wisdom_well/core/network/network_client.dart';
import 'package:wisdom_well/core/network/network_info.dart';
import 'package:wisdom_well/core/routes/auto_router.dart';
import 'package:wisdom_well/core/services/authenticator.dart';
import 'package:wisdom_well/core/services/database_provider.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/create_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/delete_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/fetch_trees_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/generate_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/datasources/update_tree_remote_ds.dart';
import 'package:wisdom_well/data/knowledge_trees/repositories/add_node_repository_impl.dart';
import 'package:wisdom_well/data/knowledge_trees/repositories/create_tree_repository_impl.dart';
import 'package:wisdom_well/data/knowledge_trees/repositories/delete_tree_repository_impl.dart';
import 'package:wisdom_well/data/knowledge_trees/repositories/fetch_trees_repository_impl.dart';
import 'package:wisdom_well/data/knowledge_trees/repositories/suggest_nodes_repository_impl.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/add_node_repository.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/create_tree_repository.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/delete_tree_repository.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/fetch_trees_repository.dart';
import 'package:wisdom_well/domain/knowledge_trees/repositories/suggest_nodes_repository.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/add_node.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/create_tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/delete_tree.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/fetch_trees.dart';
import 'package:wisdom_well/domain/knowledge_trees/usecases/suggest_nodes.dart';

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

    sl.registerLazySingleton<CreateTreeRemoteDs>(
      () => CreateTreeRemoteDsImpl(databaseProvider: sl()),
    );

    sl.registerLazySingleton<GenerateTreeRemoteDs>(
      () => GenerateTreeRemoteDsImpl(sl()),
    );

    sl.registerLazySingleton<UpdateTreeRemoteDs>(
      () => UpdateTreeRemoteDsImpl(databaseProvider: sl()),
    );

    sl.registerLazySingleton<DeleteTreeRemoteDs>(
      () => DeleteTreeRemoteDsImpl(databaseProvider: sl()),
    );

    // Repositories
    sl.registerLazySingleton<FetchTreesRepository>(
      () => FetchTreesRepositoryImpl(
        networkInfo: sl(),
        fetchTreesRemoteDs: sl(),
      ),
    );

    sl.registerLazySingleton<CreateTreeRepository>(
      () => CreateTreeRepositoryImpl(
        networkInfo: sl(),
        generateTreeRemoteDs: sl(),
        createTreeRepository: sl(),
      ),
    );

    sl.registerLazySingleton<SuggestNodesRepository>(
      () => SuggestNodesRepositoryImpl(
        networkInfo: sl(),
        updateTreeRemoteDs: sl(),
        generateTreeRemoteDs: sl(),
      ),
    );

    sl.registerLazySingleton<AddNodeRepository>(
      () => AddNodeRepositoryImpl(
        generateTreeRemoteDs: sl(), 
        updateTreeRemoteDs: sl(), 
        networkInfo: sl()),
    );

    sl.registerLazySingleton<DeleteTreeRepository>(
      () => DeleteTreeRepositoryImpl(
        networkInfo: sl(),
        deleteTreeRemoteDs: sl(),
      ),
    );

    // Use Cases
    sl.registerLazySingleton(() => FetchTrees(sl()));
    sl.registerLazySingleton(() => CreateTree(repository: sl()));
    sl.registerLazySingleton(() => SuggestNodes(sl()));
    sl.registerLazySingleton(() => AddNode(repository: sl()));
    sl.registerLazySingleton(() => DeleteTree(repository: sl()));

    // Bloc
    sl.registerFactory(() => AuthBloc());
    sl.registerFactory(
      () => TreesBloc(
        fetchTrees: sl(),
        createTree: sl(),
        deleteTree: sl(),
      ),
    );
    sl.registerFactory(
      () => TreeBloc(
        fetchSpecificTree: sl(),
        addNode: sl(),
        removeNode: sl(),
        suggestNodes: sl(),
      ),
    );

    //
    sl.registerSingleton(Authenticator());
    sl.registerSingleton(DatabaseProvider());
  }
}
