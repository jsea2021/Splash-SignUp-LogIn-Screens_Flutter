import 'package:flutter/material.dart';

import 'logIn_Screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SignupState();
}

class _SignupState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              border:
                  Border.all(width: 2, color: Color.fromARGB(255, 106, 64, 49)),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6000),
                  bottomRight: Radius.circular(6000)),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  scale: 10,
                  image: AssetImage("images/ODUJEK0.jpg"))),
        ),
        Container(
          margin: EdgeInsets.only(right: 20, top: 20, left: 40),
          alignment: Alignment.bottomLeft,
          child: Text("Register",
              style: TextStyle(
                  color: Color.fromARGB(255, 106, 64, 49),
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
        ),

        ////////////////////////////////
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: TextFormField(
            cursorColor: Color.fromARGB(255, 106, 64, 49), //لون الموشر
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 106, 64, 49),
              ),
              hintText: "Enter Full name",
              hintStyle: TextStyle(fontSize: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
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
                Icons.email,
                color: Color.fromARGB(255, 106, 64, 49),
              ),
              hintText: "Enter Email",
              hintStyle: TextStyle(fontSize: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
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
                Icons.phone,
                color: Color.fromARGB(255, 106, 64, 49),
              ),
              hintText: "Enter Phone Number",
              hintStyle: TextStyle(fontSize: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
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
              hintText: "EnterPassword",
              hintStyle: TextStyle(fontSize: 17),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 106, 64, 49))),
            ),
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
                "REGISTER",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
        ),

        AnimatedContainer(
            margin: EdgeInsets.only(left: 90),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Row(
              children: [
                Text("Have Already Member?  "),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => logInScreen(),
                        ));
                  },
                  child: Text("Login Now",
                      style: TextStyle(
                          color: Color.fromARGB(255, 50, 149, 53),
                          fontWeight: FontWeight.bold)),
                )
              ],
            )),
      ],
    )));
  }
}
