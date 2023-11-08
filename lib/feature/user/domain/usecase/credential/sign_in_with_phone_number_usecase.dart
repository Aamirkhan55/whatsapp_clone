import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class SignInWithPhoneNumberUseCase {
  final UserRepository repository;

  SignInWithPhoneNumberUseCase({required this.repository});

  Future<void> call(String smsPinCode) async {
    return repository.signInWithPhoneNumber(smsPinCode);
  }

}