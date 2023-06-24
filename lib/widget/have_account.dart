import 'package:bayani/screens/loginScreen.dart';
import 'package:bayani/screens/signUpScreen.dart';
import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  HaveAccount({
    Key? key,
    required this.register,
    required this.askregister,
  }) : super(key: key);

  String askregister;
  String register;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          askregister,
          style: TextStyle(fontSize: 15),
        ),
        GestureDetector(
          onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())),
          child: Text(
            register,
            style: TextStyle(
                fontSize: 15,
                color: Colors.red),
          ),
        ),

      ],
    );
  }
}