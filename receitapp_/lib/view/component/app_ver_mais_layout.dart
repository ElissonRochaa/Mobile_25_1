import 'package:flutter/material.dart';
import 'package:receitapp_/models/receita_model.dart';
import 'package:receitapp_/view/component/app_card_produto_home.dart';

class VerMaisLayout extends StatelessWidget {
  final String tituloSecao;
  final List<ReceitaModel> receitas;

  const VerMaisLayout({
    super.key,
    required this.tituloSecao,
    required this.receitas,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Título com traços laterais
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenWidth * 0.1,
                height: 2,
                color: theme.colorScheme.tertiary,
              ),
              SizedBox(width: 8),
              Text(
                tituloSecao,
                style: theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Container(
                  height: 2,
                  color: theme.colorScheme.tertiary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Lista de receitas em formato de grid
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // Usa o scroll externo
            itemCount: receitas.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 cards por linha
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.75, // Ajuste conforme o tamanho do card
            ),
            itemBuilder: (context, index) {
              final receita = receitas[index];
              return AppCardProdutoHome(
                nomeReceita: receita.titulo,
                srcImage: "https://www.pamfis.com.br/uploads/receitas/2020/08/tapioca-com-renda-de-queijo.jpg",
                      avaliacao: 4,
              );
            },
          ),
        ],
      ),
    );
  }
}
