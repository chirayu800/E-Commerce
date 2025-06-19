import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/auth_view_model.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLogin = true;

  void _submit() async {
    final vm = context.read<AuthViewModel>();
    final email = emailController.text.trim();
    final password = passwordController.text;

    final success = isLogin
        ? await vm.login(email, password)
        : await vm.register(email, password);

    if (success) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(vm.error ?? "Unknown error")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    return Scaffold(
      appBar: AppBar(title: Text(isLogin ? "Login" : "Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: const InputDecoration(labelText: "Email")),
            TextField(controller: passwordController, decoration: const InputDecoration(labelText: "Password"), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _submit, child: Text(isLogin ? "Login" : "Register")),
            TextButton(
              onPressed: () => setState(() => isLogin = !isLogin),
              child: Text(isLogin ? "Don't have account? Register" : "Already have account? Login"),
            ),
          ],
        ),
      ),
    );
  }
}
