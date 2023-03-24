import 'package:flutter/material.dart';
import 'package:kuis_praktpm_123200011/data_groceries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groceries Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: data_groceries(),
    );
  }
}
