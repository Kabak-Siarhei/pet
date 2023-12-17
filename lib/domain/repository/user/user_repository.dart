import 'package:pet/domain/index.dart';

abstract class IUserRepository {
  Future<Person> getPerson({
    required String id,
  });

  Future<List<Person>> getUsersInfo();
}
