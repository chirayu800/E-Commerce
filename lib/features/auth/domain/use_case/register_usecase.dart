import '../entity/user_entity.dart';
import '../repository/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  Future<void> call(UserEntity user) => repository.register(user);
}
