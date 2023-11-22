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
}
