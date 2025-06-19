import 'package:e_commerce/features/auth/data/data_source/local_datasource/local_user_data_source.dart';

import '../../../domain/entity/user_entity.dart';
import '../../../domain/repository/auth_repository.dart';
import '../../model/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LocalUserDataSource local;

  AuthRepositoryImpl(this.local);

  @override
  Future<void> register(UserEntity user) async {
    final userModel = UserModel.fromEntity(user);
    await local.saveUser(userModel);
  }

  @override
  Future<UserEntity?> login(String email, String password) async {
    final user = await local.getUser(email);
    if (user != null && user.password == password) {
      return user.toEntity();
    }
    return null;
  }
}
