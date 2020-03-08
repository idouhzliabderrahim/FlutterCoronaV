import 'package:firebase_showcase/pages/setup/sign_in.dart';
import 'package:firebase_showcase/pages/setup/sign_up.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CoronaV info app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              'Already have an account ?',
              style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
            ),
          ),
          RaisedButton(
            onPressed: navigateToSignIn,
            child: Text('Sign in'),
          ),
          Center(
            child: Text(
              'New to the app ?',
              style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
            ),
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            child: Text('Sign up'),
          ),
        ],
      ),
    );
  }

  void navigateToSignIn() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(), fullscreenDialog: true));
  }

  void navigateToSignUp() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SignUpPage(), fullscreenDialog: true));
  }
}
