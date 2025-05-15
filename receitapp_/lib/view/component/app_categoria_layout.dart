import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:receitapp_/controller/receita_controller.dart';
import 'package:receitapp_/models/receita_model.dart';
import 'package:receitapp_/view/component/app_card_produto_home.dart';

class AppCategoriaLayout extends StatefulWidget {
  final int id;
  const AppCategoriaLayout({super.key, required this.id});

  @override
  State<AppCategoriaLayout> createState() => _AppCategoriaLayoutState();
}

class _AppCategoriaLayoutState extends State<AppCategoriaLayout> {
  bool isLoading = true;
  List<ReceitaModel> receitas = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => carregarReceitas());
  }

  Future<void> carregarReceitas() async {
    final controller = Provider.of<ReceitaController>(context, listen: false);
    try {
      final receitasCarregadas = await controller.loadReceitasByCategoria(
        categoriaId: widget.id,
      );
      setState(() {
        receitas = receitasCarregadas;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        receitas = [];
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (receitas.isEmpty) {
      return const Text("Nenhuma receita encontrada.");
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: screenWidth * 0.1,
              height: 2,
              color: theme.colorScheme.tertiary,
            ),
            const SizedBox(width: 8),
            Text(
              receitas[0].categoria.nome,
              style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: screenWidth * 0.5,
                  height: 2,
                  color: theme.colorScheme.tertiary,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/vermais', arguments: widget.id);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 24),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.tertiary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Ver mais",
                      style: theme.textTheme.titleSmall?.copyWith(
                          color: theme.colorScheme.onTertiary),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 24),
              ...receitas.map((receita) => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: AppCardProdutoHome(
                      nomeReceita: receita.titulo,
                      srcImage: "https://www.pamfis.com.br/uploads/receitas/2020/08/tapioca-com-renda-de-queijo.jpg",
                      avaliacao: 4,
                    ),
                  )),
              const SizedBox(width: 24),
            ],
          ),
        ),
      ],
    );
  }
}
