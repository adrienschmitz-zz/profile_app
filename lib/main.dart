import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_app/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Arial')),
      home: ProfilePage(),
    );
  }
}
