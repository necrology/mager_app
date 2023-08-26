import 'package:flutter/material.dart';
import 'package:mager_app/models/user_model.dart';
import 'package:mager_app/screens/customer/customer_screen.dart';
import 'package:mager_app/services/auth.dart';
import 'package:provider/provider.dart';

class LoginProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  UserModel? userModel;
  AuthService authService = AuthService();
  
  bool isLoading = false;

  loginAction({
    required GlobalKey<FormState> key,
    required BuildContext context,
  }) async {
    isLoading = true;
    notifyListeners();
    if (key.currentState!.validate()) {
      userModel = await authService.loginAction(
        email: email.text,
        password: password.text,
      );
      print('USER MODEL -> ${userModel?.data?.role}');
      if (userModel?.data?.role == 'customer') {
        Future.delayed(
          const Duration(seconds: 5),
          () => {
            Navigator.pushNamedAndRemoveUntil(
                context, CustomerScreen.route, (route) => false)
          },
        );
      }
    }
    isLoading = false;
    notifyListeners();
  }
}
