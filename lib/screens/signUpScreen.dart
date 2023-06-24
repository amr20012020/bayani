import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/have_account.dart';
import 'loginScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool? _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  buildFormUserName(),
                  SizedBox(
                    height:20,
                  ),
                  buildFormEmail(),
                  SizedBox(
                    height:20,
                  ),
                  buildFormPassword(true),
                  TextButton(
                    onPressed: () {  }, child: Text("SignUp"),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  HaveAccount(register: 'Register Now', askregister: 'Do you have account?',),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFormPassword(bool obserText){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible =!_passwordVisible!;
                  });
                },
                icon: Icon(
                  _passwordVisible! ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),

              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget buildFormEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Colors.white,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}


Widget buildFormPhone(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text("رقم الهاتف",style: TextStyle(color: Colors.black),),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.red,
            ),
            hintText: '97244282',
            hintStyle: TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ),
    ],
  );
}



Widget buildFormUserName(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              CupertinoIcons.person_alt_circle_fill,
              color: Colors.white,
            ),
            hintText: 'Username',
            hintStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

