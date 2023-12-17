import 'package:dio/dio.dart';
import 'package:pet/data/index.dart';
import 'package:retrofit/retrofit.dart';

part 'api_rest_client.g.dart';

@RestApi()
abstract class ApiRestClient {
  factory ApiRestClient(
    Dio dio,
  ) = _ApiRestClient;

  @GET('/api/users/{id}')
  Future<UserModel> getPerson({
    @Path() required String id,
  });

  @GET('/api/users?page=2')
  Future<UsersModel> getUsersInfo();
}
