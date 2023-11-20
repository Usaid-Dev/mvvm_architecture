import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes_names.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, RoutesName.home);
        },
        child: const Text('Click'),
      ),
    ));
  }
}
