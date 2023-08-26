import 'package:flutter/material.dart';
import 'package:mager_app/screens/login/login_screen.dart';

class CustomerProvider extends ChangeNotifier {
  void logout({required BuildContext context}) {
    Navigator.pushNamedAndRemoveUntil(context, LoginDemo.route, (route) => false);
  }
}