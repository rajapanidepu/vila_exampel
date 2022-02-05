import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vila/navigation/route.dart';
import 'package:vila/network/login.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          child: Center(
            child: ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                login("test", "test").then((value) =>
                    routeToHome(context));
              },
            ),
          ),
        ),
      ),
    );
  }
}
