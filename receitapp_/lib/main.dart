import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:receitapp_/controller/AppController.dart';
import 'package:receitapp_/controller/receita_controller.dart';
import 'package:receitapp_/view/page/home_page.dart';
import 'package:receitapp_/view/page/ver_mais_page.dart';

void main() {
  runApp(
    MultiProvider(providers: [ChangeNotifierProvider(create: (_) => ReceitaController()),],
    child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Color(0xFFE47034),
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            fontFamily: 'Homenaje',
          ),
          routes: {
            '/': (context) => HomePage(),
            '/vermais': (context) => VerMaisPage(),
          },
          initialRoute: '/',
        );
      },
    );
  }
}
