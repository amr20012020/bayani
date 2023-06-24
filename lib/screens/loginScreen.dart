import 'package:bayani/screens/homeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/no_account_text.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "Login";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();

  var passwordController = TextEditingController();
  bool _passwordObscured = true;

  @override
  void initState() {
    // TODO: implement initState
    _passwordObscured = false;
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
                  buildFormUrl(),
                  SizedBox(
                    height: 20,
                  ),
                  buildFormUserName(),
                  SizedBox(
                    height: 19,
                  ),
                  buildFormPassword(true),
                  SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        primary: Colors.white,
                        backgroundColor: Colors.red,
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value){

                        },
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      const Text(
                        'Forget Password?',
                        style: TextStyle(
                          fontWeight:
                          FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  NoAccountText(register: 'SignUp', askregister: 'Dont have account?',),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFormPassword(bool _passwordVisible){
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
            keyboardType: TextInputType.visiblePassword,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.password,color: Colors.white,),
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
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            suffixIcon: Icon(
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

Widget buildFormUrl(){
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
              Icons.link,
              color: Colors.white,
            ),
            hintText: 'URL',
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



void navigateHome(BuildContext context)async{
  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeLayout()));
}