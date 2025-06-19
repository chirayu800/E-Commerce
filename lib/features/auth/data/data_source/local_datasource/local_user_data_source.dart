import '../../model/user_model.dart';
import 'package:hive/hive.dart';

abstract class LocalUserDataSource {
  Future<void> saveUser(UserModel user);
  Future<UserModel?> getUser(String email);
}

class LocalUserDataSourceImpl implements LocalUserDataSource {
  final Box<UserModel> box;

  LocalUserDataSourceImpl(this.box);

  @override
  Future<void> saveUser(UserModel user) async {
    await box.put(user.email, user);
  }

  @override
  Future<UserModel?> getUser(String email) async {
    return box.get(email);
  }
}
