import 'package:app1/widgets/academy_page.dart';
import 'package:app1/widgets/card_exo1.dart';
import 'package:app1/widgets/exo_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const AcademyPage(),
    );
  }
}
