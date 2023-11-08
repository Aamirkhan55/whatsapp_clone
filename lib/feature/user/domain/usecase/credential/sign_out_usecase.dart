import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class SignOutUseCase {
  final UserRepository repository;

  SignOutUseCase({required this.repository});

  Future<void> call() async {
    return repository.signOut();
  }

}