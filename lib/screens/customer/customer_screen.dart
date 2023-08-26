import 'package:flutter/material.dart';
import 'package:mager_app/provider/customer_provider.dart';
import 'package:provider/provider.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});
  static const route = 'customerScreen';

  @override
  State<StatefulWidget> createState() {
    return _CustomerScreenState();
  }
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerProvider>(builder: (context, provider, _) {
      return Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('CUSTOMER SCREEN'),
              ElevatedButton(onPressed: () {
                provider.logout(context: context);
              }, child: const Text('Logout'))
            ],
          ),
        ),
      );
    });
  }
}
