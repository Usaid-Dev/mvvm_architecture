import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastmessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.blueGrey,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message,
      )..show(context),
    );
  }
}
