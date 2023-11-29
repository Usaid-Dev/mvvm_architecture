import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/utils.dart';

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
          Utils.snakBar('No internet connection', context);
          // Utils.toastmessage('Hello World');
        },
        child: const Text('Click'),
      ),
    ));
  }
}
