import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class GetCurrentUidUseCase {
  final UserRepository repository;

  GetCurrentUidUseCase({required this.repository});

  Future<String> call() async {
    return repository.getCurrentUID();
  }

}