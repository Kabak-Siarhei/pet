import 'package:pet/data/index.dart';
import 'package:pet/domain/index.dart';

class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl({
    required this.apiRestClient,
  });

  final ApiRestClient apiRestClient;

  @override
  Future<Person> getPerson({
    required String id,
  }) async {
    final UserModel userInfoModel = await apiRestClient.getPerson(id: id);
    return UserInfoMapper.map(userInfoModel.person!);
  }

  @override
  Future<List<Person>> getUsersInfo() async {
    final UsersModel usersModel = await apiRestClient.getUsersInfo();
    return usersModel.users.map(UserInfoMapper.map).toList();
  }
}
