import 'package:e_commerce/features/auth/domain/entity/user_entity.dart';
import 'package:e_commerce/features/auth/domain/use_case/login_usecase.dart';
import 'package:e_commerce/features/auth/domain/use_case/register_usecase.dart';
import 'package:flutter/material.dart';


class AuthViewModel extends ChangeNotifier {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;

  AuthViewModel({required this.loginUseCase, required this.registerUseCase});

  String? _error;
  String? get error => _error;

  Future<bool> login(String email, String password) async {
    final user = await loginUseCase(email, password);
    if (user != null) return true;
    _error = "Invalid credentials";
    notifyListeners();
    return false;
  }

  Future<bool> register(String email, String password) async {
    try {
      await registerUseCase(UserEntity(email: email, password: password));
      return true;
    } catch (e) {
      _error = "Failed to register";
      notifyListeners();
      return false;
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
