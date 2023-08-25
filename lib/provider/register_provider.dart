import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterProvider extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  bool isLoading = false;

  registerAction({
    required GlobalKey<FormState> key,
    required BuildContext context,
  }) async {
    isLoading = true;
    notifyListeners();
    if (key.currentState!.validate()) {
      print('EMAIL -> ${email.text}');
      print('PASS -> ${name.text}');
      print('PASS -> ${password.text}');
      print('PASS -> ${confirmPassword.text}');
    }
    isLoading = false;
    notifyListeners();
  }
}
