import 'package:whatsapp_clone/feature/user/domain/entities/user_entities.dart';
import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class CreateUserUseCase {
  final UserRepository repository;

  CreateUserUseCase({required this.repository});

  Future<void> call(UserEntity user) async {
    return repository.createUser(user);
  }

}