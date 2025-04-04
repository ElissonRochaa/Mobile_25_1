import 'package:flutter/material.dart';
import 'package:receitapp/config/themeApp.dart';
import 'package:receitapp/pages/homepage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReceitApp',
      theme: ThemeApp.theme,
      home: HomePage(),
    );
  }
}
