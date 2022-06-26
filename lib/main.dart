import 'package:flutter/material.dart';
import 'package:lesson_7/UI/pages/first_screen.dart';

import 'UI/widgets/my_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyScaffold(),
    );
  }
}