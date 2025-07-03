import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/failure/failure.dart';
import 'package:e_commerce/features/auth/domain/repository/i_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginUsecaseProvider =
    Provider.autoDispose<LoginUsecase>((ref) => LoginUsecase(ref.read(iauthRepositoryProvider)));

class LoginUsecase {
  final IauthRepository iauthRepository;
  LoginUsecase(this.iauthRepository);

  Future<Either<Failure, bool>> login({
    required String userName,
    required String password,
  }) {
    return iauthRepository.login(userName, password);
  }
}