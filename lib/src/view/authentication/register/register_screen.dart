import 'package:flutter/material.dart';

import '../widgets/background.dart';
import 'components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              CustomBackground(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  hoverColor: Colors.grey,
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Body(),
        ],
      ),
    );
  }
}
