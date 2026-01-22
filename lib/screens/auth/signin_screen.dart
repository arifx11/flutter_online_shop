import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String username = "admin";
  String password = "123456";

  void signin() {
    if (_usernameController.text == username &&
        _passwordController.text == password) {
      //Redirect to home screen
      Navigator.of(
        context,
      ).push(MaterialPageRoute<void>(builder: (context) => const HomeScreen()));
    } else {
      //show error snackbar
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          //logo

          //welcome text

          //user

          //pass

          //signin txtbtn

          //signup txtbtn
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/c_kamote.png',
                height: 100.0,
                width: 100.0,
              ),
            ),

            SizedBox(height: 10),
            // LOGIN
            Text(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black,
              ),
              "LOGIN:",
            ),

            SizedBox(height: 30),
            // email textfield
            TextField(
              controller: _usernameController,
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(color: Colors.black, Icons.email),
                labelText: "Username:",
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            // pass textfield
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(color: Colors.black, Icons.lock),
                labelText: "Password:",
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            // login button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: signin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD47BE4),
                  foregroundColor: Colors.white,
                ),
                child: Text("LOGIN", style: TextStyle(fontSize: 17)),
              ),
            ),

            SizedBox(height: 30),
            // register
            TextButton(onPressed: () {}, child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
