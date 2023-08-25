import 'package:flutter/material.dart';
import 'package:mager_app/provider/login_provider.dart';
import 'package:mager_app/provider/register_provider.dart';
import 'package:mager_app/provider/splash_provider.dart';
import 'package:mager_app/screens/login/login_screen.dart';
import 'package:mager_app/screens/register/register_screen.dart';
import 'package:mager_app/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.route: (context) => ChangeNotifierProvider<SplashProvider>(
          create: (context) => SplashProvider(),
          child: const SplashScreen(),
        ),
    LoginDemo.route: (context) => ChangeNotifierProvider<LoginProvider>(
          create: (context) => LoginProvider(),
          child: const LoginDemo(),
        ),
    RegisterScreen.route: (context) => ChangeNotifierProvider<RegisterProvider>(
          create: (context) => RegisterProvider(),
          child: const RegisterScreen(),
        ),
  };
}
