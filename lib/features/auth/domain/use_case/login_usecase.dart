// lib/app/features/auth/domain/usecase/login_usecase.dart
import '../entity/user_entity.dart';
import '../repository/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<UserEntity?> call(String email, String password) {
    return repository.login(email, password);
  }
}
