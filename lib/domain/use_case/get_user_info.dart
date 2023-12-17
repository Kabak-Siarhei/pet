import 'package:pet/domain/index.dart';

class GetUserInfoUseCase {
  GetUserInfoUseCase({
    required this.userRepository,
  });

  final IUserRepository userRepository;

  Future<Person> call({
    required String id,
  }) =>
      userRepository.getPerson(
        id: id,
      );
}
