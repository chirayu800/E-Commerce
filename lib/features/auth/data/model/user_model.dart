import 'package:e_commerce/features/auth/domain/entity/user_entity.dart';
import 'package:hive/hive.dart';


part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  final String email;

  @HiveField(1)
  final String password;

  UserModel({required this.email, required this.password});

  factory UserModel.fromEntity(UserEntity entity) =>
      UserModel(email: entity.email, password: entity.password);

  UserEntity toEntity() => UserEntity(email: email, password: password);
}
