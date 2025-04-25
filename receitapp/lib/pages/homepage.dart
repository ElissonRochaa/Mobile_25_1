import 'package:flutter/material.dart';
import 'package:receitapp/widgets/linha_widget.dart';
import 'package:receitapp/widgets/receita_card_widget.dart';
import 'package:receitapp/widgets/receita_list_widget.dart';

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
          // Todo: Adicionar os parametros 
          ReceitaListWidget(),
          ReceitaListWidget(),
          ReceitaListWidget(),
        ],
      ),
    );
  }
}
