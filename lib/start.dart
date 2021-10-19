import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 45.0),
            Container(
              height: 300,
              child: const Image(
                image: AssetImage('assets/images/start.png'),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                  text: 'Welcome to',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'x Groceries',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange)),
                  ]),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Fresh Groceries Delivered at your Doorstep",
              style: TextStyle(color: Colors.black),
            ),
           const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange,
                ),
               const SizedBox(width: 20.0),
                RaisedButton(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  onPressed: () {},
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.orange,
                ),
              ],
            ),
          const  SizedBox(height: 20.0),
            SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
