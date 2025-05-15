import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:receitapp_/controller/receita_controller.dart';
import 'package:receitapp_/models/receita_model.dart';
import 'package:receitapp_/view/component/app_drawer.dart';
import 'package:receitapp_/view/component/app_ver_mais_layout.dart';

class VerMaisPage extends StatefulWidget {
  const VerMaisPage({super.key});

  @override
  State<VerMaisPage> createState() => _VerMaisPageState();
}

class _VerMaisPageState extends State<VerMaisPage> {
  bool isLoading = true;
  List<ReceitaModel> receitas = [];
  String tituloSecao = "Receitas";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final categoriaId = ModalRoute.of(context)?.settings.arguments as int?;

    if (categoriaId != null && isLoading) {
      carregarReceitas(categoriaId);
    }
  }

  Future<void> carregarReceitas(int categoriaId) async {
    final controller = Provider.of<ReceitaController>(context, listen: false);
    final receitasCarregadas =
        await controller.loadReceitasByCategoria(categoriaId: categoriaId);

    setState(() {
      receitas = receitasCarregadas;
      tituloSecao = receitas.isNotEmpty
          ? receitas.first.categoria.nome
          : "Receitas";
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ReceitApp",
          style:
              theme.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: AppDrawer(),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : VerMaisLayout(
              tituloSecao: tituloSecao,
              receitas: receitas,
            ),
    );
  }
}
