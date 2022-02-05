import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vila/navigation/route.dart';
import 'package:vila/network/login.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Villa App'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              routeToHome(context);
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              logout().then(
                  (value) => routeToLogin(context));
            },
          ),
        ],
      ),
    );
  }
}
