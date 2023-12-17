import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pet/data/repository/user/user_repository_impl.dart';
import 'package:pet/index.dart';

final GetIt getIt = GetIt.I;

Future<void> initInjector() async {
  final Dio dio = buildDioClient();

  getIt
    ..registerLazySingleton<AppRouter>(
      AppRouter.new,
    )
    ..registerLazySingleton<ApiRestClient>(
      () => ApiRestClient(
        dio,
      ),
    )
    ..registerLazySingleton<IUserRepository>(
      () => UserRepositoryImpl(
        apiRestClient: getIt<ApiRestClient>(),
      ),
    )
    ..registerLazySingleton<GetUserInfoUseCase>(
      () => GetUserInfoUseCase(
        userRepository: getIt.get<IUserRepository>(),
      ),
    )
    ..registerLazySingleton<GetUsersInfoUseCase>(
      () => GetUsersInfoUseCase(
        userRepository: getIt.get<IUserRepository>(),
      ),
    )
    ..registerLazySingleton<SearchBloc>(
      SearchBloc.new,
    )
    ..registerFactory<UserInfoBloc>(
      UserInfoBloc.new,
    )
    ..registerFactory<UsersListBloc>(
      UsersListBloc.new,
    );
}
