import 'package:flutter/material.dart';
import 'package:mager_app/provider/login_provider.dart';
import 'package:mager_app/screens/register/register_screen.dart';
import 'package:provider/provider.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});
  static const route = 'loginScreen';

  @override
  State<StatefulWidget> createState() {
    return _LoginDemoState();
  }
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, provider, _) {
      print('ISLOAD -> ${provider.isLoading}');
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: provider.formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0, bottom: 30.0),
                    child: Center(
                      child: SizedBox(
                          width: 200,
                          height: 150,
                          /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                          child: Image.asset('assets/images/flutter.png')),
                    ),
                  ),
                  Padding(
                    //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: provider.email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    //padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: provider.password,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: 'Password',
                        hintText: 'Enter secure password',
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Lupa Password',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: !provider.isLoading
                          ? () {
                              provider.loginAction(
                                  key: provider.formKey, context: context);
                            }
                          : null,
                      child: provider.isLoading ? const CircularProgressIndicator() : const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Belum punya akun? '),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context, RegisterScreen.route, (route) => false);
                        },
                        child: const Text(
                          'Daftar akun',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
