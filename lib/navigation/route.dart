import 'package:flutter/cupertino.dart';

routeToLogin(BuildContext context) {
  Navigator.popUntil(context, (route) => false);
  Navigator.pushNamed(context, "/login");
}

routeToHome(BuildContext context) {
  Navigator.popUntil(context, (route) => false);
  Navigator.pushNamed(context, "/home");
}