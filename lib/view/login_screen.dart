import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          TextFormField(
            controller: _emailcontroller,
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            decoration: const InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
              prefixIcon: Icon(
                Icons.alternate_email,
              ),
            ),
            onFieldSubmitted: (value) {
              Utils.fieldFocusChange(
                  context, emailFocusNode, passwordFocusNode);
            },
          ),
          TextFormField(
            controller: _passwordcontroller,
            focusNode: passwordFocusNode,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: const InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.alternate_email,
              ),
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
