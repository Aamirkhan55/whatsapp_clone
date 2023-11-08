import 'package:whatsapp_clone/feature/user/domain/entities/contact_entities.dart';
import 'package:whatsapp_clone/feature/user/domain/repository/user_reprository.dart';

class GetDeviceNumberUseCase {
  final UserRepository repository;

  GetDeviceNumberUseCase({required this.repository});

  Future<List<ContactEntity>> call() async {
    return repository.getDeviceNumber();
  }

}