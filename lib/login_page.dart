import 'package:flutter/material.dart';
import 'package:profile_app/profile_page.dart';
//import 'package:profile_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }),
              );
            },
            style: ElevatedButton.styleFrom(
                elevation: 5, primary: Color.fromARGB(255, 251, 185, 124)),
            child: Text('Entrar')),
      ),
    ));
  }
}
