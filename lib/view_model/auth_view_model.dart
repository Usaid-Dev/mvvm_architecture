import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architecture/repository/auth_repository.dart';
import 'package:mvvm_architecture/utils/routes/routes_names.dart';
import 'package:mvvm_architecture/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signUploading = false;
  bool get signUploading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value) {
    _signUploading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.loginApi(data).then((value) {
      setLoading(false);
      Utils.flushBarErrorMessage('Login Successfully', context);
      Navigator.pushNamed(context, RoutesName.home);
      if (kDebugMode) {
        print(
          value.toString(),
        );
      }
    }).onError((error, stackTrace) {
      setLoading(false);
      if (kDebugMode) {
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myRepo.signUpApi(data).then((value) {
      setSignUpLoading(false);
      Utils.flushBarErrorMessage('SignUp Successfully', context);
      Navigator.pushNamed(context, RoutesName.home);
      if (kDebugMode) {
        print(
          value.toString(),
        );
      }
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
      if (kDebugMode) {
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }
}
