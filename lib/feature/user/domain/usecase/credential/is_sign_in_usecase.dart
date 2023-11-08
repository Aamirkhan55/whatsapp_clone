import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class IsSignInUseCase {
  final UserRepository repository;

  IsSignInUseCase({required this.repository});

  Future<bool> call() async {
    return repository.isSignIn();
  }

}