import 'package:flutter/material.dart';
import 'package:shared_preference_demo/pages/log_in.dart';
import 'package:shared_preference_demo/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Log_in(),
      routes: {
        Log_in.id:(context)=>Log_in(),
        Sign_up.id:(context)=>Sign_up(),
      },
    );
  }
}
