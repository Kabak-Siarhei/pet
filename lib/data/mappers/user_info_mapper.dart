import 'package:pet/data/index.dart';
import 'package:pet/domain/index.dart';

class UserInfoMapper {
  static Person map(PersonModel model) => Person(
        id: model.id ?? 0,
        email: model.email ?? '',
        firstName: model.firstName ?? '',
        lastName: model.lastName ?? '',
        avatar: model.avatar ?? '',
      );
}
