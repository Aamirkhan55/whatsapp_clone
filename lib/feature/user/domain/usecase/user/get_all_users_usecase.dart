import 'package:whatsapp_clone/feature/user/domain/entities/user_entities.dart';
import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class GetAllUsersUseCase {
  final UserRepository repository;

  GetAllUsersUseCase({required this.repository});

  Stream<List<UserEntity>> call() {
    return repository.getAllUsers();
  }

}