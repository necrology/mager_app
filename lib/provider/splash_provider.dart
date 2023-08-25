import 'package:flutter/material.dart';
import 'package:mager_app/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

class SplashProvider extends ChangeNotifier {
  init(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginDemo.route,
        (route) => false,
      );
    });
    notifyListeners();
  }
}
