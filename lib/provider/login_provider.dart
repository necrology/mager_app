import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isLoading = false;

  loginAction({
    required GlobalKey<FormState> key,
    required BuildContext context,
  }) async {
    isLoading = true;
    notifyListeners();
    if (key.currentState!.validate()) {
      print('EMAIL -> ${email.text}');
      print('PASS -> ${password.text}');
    }
    isLoading = false;
    notifyListeners();
  }
}
