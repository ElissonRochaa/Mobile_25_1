import 'package:flutter/material.dart';
import 'package:receitapp/widgets/linha_widget.dart';
import 'package:receitapp/widgets/receita_card_widget.dart';

class ReceitaListWidget extends StatelessWidget {
  const ReceitaListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          LinhaWidget('Café da Manhã'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
              top: 10,
            ),
            child: Row(
              children: [
                ReceitaCardWidget('Tapioca com Queijo', 0.74, true,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5LHQFV-DU5SKonCG9ayBDER86b6JhGcTSA&s'),
                SizedBox(width: 20),
                ReceitaCardWidget('Pao assado', 2.25, false,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5LHQFV-DU5SKonCG9ayBDER86b6JhGcTSA&s'),
                SizedBox(width: 20),
                ReceitaCardWidget('Pao assado', 2.25, false,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5LHQFV-DU5SKonCG9ayBDER86b6JhGcTSA&s'),
                SizedBox(width: 20),
                ReceitaCardWidget('Pao assado', 2.25, false,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5LHQFV-DU5SKonCG9ayBDER86b6JhGcTSA&s'),
              ],
            ),
          )
      ],
    );
    
  }
}