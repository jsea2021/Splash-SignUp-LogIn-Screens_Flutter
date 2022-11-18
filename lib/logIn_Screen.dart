import 'dart:io';

import 'package:f2/signup_screen.dart';
import 'package:flutter/material.dart';

class logInScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const logInScreen({Key? key}) : super(key: key);

  @override
  State<logInScreen> createState() => _loginState();
}

class _loginState extends State<logInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1
            Container(
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3, color: Color.fromARGB(255, 106, 64, 49)),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      scale: 10,
                      image: AssetImage("images/ODUJEK0.jpg"))),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, top: 50, left: 40),
              alignment: Alignment.bottomLeft,
              child: Text("Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 106, 64, 49),
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                cursorColor: Color.fromARGB(255, 106, 64, 49), //لون الموشر
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 106, 64, 49),
                  ),
                  hintText: "Enter Email",
                  hintStyle: TextStyle(fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextFormField(
                cursorColor: Color.fromARGB(255, 106, 64, 49), //لون الموشر
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Color.fromARGB(255, 106, 64, 49),
                  ),
                  hintText: "Enter Password",
                  hintStyle: TextStyle(fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 15),
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: Text("Forget Password?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 50, 149, 53),
                        fontWeight: FontWeight.bold)),
              ),
            ),

            TextButton(
              onPressed: () {},
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      (new Color.fromARGB(255, 106, 64, 49)),
                      Color.fromARGB(255, 50, 149, 53)
                    ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
            ),

            AnimatedContainer(
                margin: EdgeInsets.only(left: 90),
                duration: Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: Row(
                  children: [
                    Text("Dont have any Acount?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return SignUpScreen();
                        // }));
                      },
                      //نفس الفكره لكن طريقه تنفيذ اخرى
                      //Navigator.push(
                      // context,
                      // MaterialPageRoute(
                      //   builder: (context) => SignUpScreen(),
                      // ));

                      //
                      child: Text("Register Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 50, 149, 53),
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
