import 'package:app1/widgets/academy_page.dart';
import 'package:app1/widgets/card_exo1.dart';
import 'package:app1/widgets/exo4/getX_bindings.dart';
import 'package:app1/widgets/exo4/getX_view.dart';
import 'package:app1/widgets/exo_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: [
        GetPage(
          name: "/Exo4",
          page: (() => const GetxView()),
          binding: GetxBindings(),
        )
      ],
      initialRoute: "Exo4",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const AcademyPage(),
    );
  }
}
