import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/failure/failure.dart';
import 'package:e_commerce/features/auth/data/repository/auth_remote_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final iauthRepositoryProvider =
    Provider((ref) => ref.read(authRemoteRepositoryProvider));

abstract class IauthRepository {
  Future<Either<Failure, bool>> register({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, bool>> login(String userName, String password);
}
