import 'package:flutter/material.dart';
import 'package:get_number/screen.dart/auth/auth_number_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get Number',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffE5E5E5),
        appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
        primarySwatch: Colors.blue,
      ),
      home: AuthNumberScreen(),
    );
  }
}
