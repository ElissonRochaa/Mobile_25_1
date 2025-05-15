import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:receitapp_/controller/AppController.dart';
import 'package:receitapp_/view/component/app_categoria_layout.dart';

import 'package:receitapp_/view/component/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ReceitApp",
          style: theme.textTheme.headlineLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Defina o scroll horizontal
        clipBehavior: Clip.none,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            AppCategoriaLayout(
              id: 1
            ),
            // SizedBox(
            //   height: 36,
            // ),
            // AppCategoriaLayout(
            //   id: 2
            // ),
            // SizedBox(
            //   height: 36,
            // ),
            // AppCategoriaLayout(
            //   id: 3
            // ),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
