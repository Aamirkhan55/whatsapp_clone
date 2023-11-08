import 'package:whatsapp_clone/feature/user/domain/entities/user_entities.dart';
import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class GetSingleUserUseCase {
  final UserRepository repository;

  GetSingleUserUseCase({required this.repository});

  Stream<List<UserEntity>> call(String uid) {
    return repository.getSingleUser(uid);
  }

}