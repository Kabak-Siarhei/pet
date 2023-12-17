import 'package:pet/domain/index.dart';

class GetUsersInfoUseCase {
  GetUsersInfoUseCase({
    required this.userRepository,
  });

  final IUserRepository userRepository;

  Future<List<Person>> call() => userRepository.getUsersInfo();
}
