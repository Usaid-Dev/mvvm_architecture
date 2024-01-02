import 'package:flutter/material.dart';
import 'package:mvvm_architecture/utils/routes/routes_names.dart';
import 'package:mvvm_architecture/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {
              userPreference.remove().then((value) => {
                    Navigator.pushNamed(context, RoutesName.login),
                  });
            },
            child: const Text(
              'LogOut',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
