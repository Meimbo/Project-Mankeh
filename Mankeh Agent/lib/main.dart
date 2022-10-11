import 'package:flutter/material.dart';
import 'package:mankehagent/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
        initialRoute: '/',
        routes: routes,
        theme: ThemeData( 
          primaryColor: Colors.teal,
        ));
  }
}