import 'package:flutter/material.dart';
import 'package:receitapp/widgets/linha_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ReceitApp'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          LinhaWidget('Café da Manhã'),
          LinhaWidget('Almoço'),
          LinhaWidget('Jantar'),
        ],
      ),
    );
  }
}