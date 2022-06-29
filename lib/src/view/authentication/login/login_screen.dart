import 'package:algoriza/src/view/authentication/widgets/background.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          CustomBackground(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Body(),
        ],
      ),
    );
  }
}
