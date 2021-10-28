
import 'package:flutter/material.dart';
import 'package:flutter_pos/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Infrsol co ., ltd'),
          backgroundColor: Colors.green,
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}