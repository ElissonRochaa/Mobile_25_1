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
          Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 136,
              width: 136,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5LHQFV-DU5SKonCG9ayBDER86b6JhGcTSA&s'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 120,
              height: 88,
              margin: EdgeInsets.only(left: 8, top: 8),
            ),
          ]),
          LinhaWidget('Almoço'),
          LinhaWidget('Jantar'),
        ],
      ),
    );
  }
}
