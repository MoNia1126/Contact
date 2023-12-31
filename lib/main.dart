import 'package:assignment3/contact_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ContactScreen.routeName,
      routes: {
        ContactScreen.routeName: (context) => ContactScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Contact Screen',
    );
  }
}
