import 'package:e_commerce/core/widgtes/dashboard_page.dart';
import 'package:e_commerce/features/auth/data/data_source/local_datasource/local_user_data_source.dart';
import 'package:e_commerce/features/auth/data/model/user_model.dart';
import 'package:e_commerce/features/auth/data/repository/local_repository/auth_repository_impl.dart';
import 'package:e_commerce/features/auth/domain/use_case/login_usecase.dart';
import 'package:e_commerce/features/auth/domain/use_case/register_usecase.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_page.dart';
import 'package:e_commerce/features/auth/presentation/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  final box = await Hive.openBox<UserModel>('users');

  final local = LocalUserDataSourceImpl(box);
  final repo = AuthRepositoryImpl(local);
  final loginUseCase = LoginUseCase(repo);
  final registerUseCase = RegisterUseCase(repo);

  runApp(
    ChangeNotifierProvider(
      create: (_) => AuthViewModel(
        loginUseCase: loginUseCase,
        registerUseCase: registerUseCase,
      ),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const AuthPage(),
        '/dashboard': (_) => const DashboardPage(), // dummy screen
      },
    );
  }
}
