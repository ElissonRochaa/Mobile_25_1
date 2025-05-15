import 'package:flutter/material.dart';
import 'package:receitapp_/controller/AppController.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: theme.primaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://clinicagenics.com/wp-content/uploads/2022/07/close-up-confident-male-employee-white-collar-shirt-smiling-camera-standing-self-assured-against-studio-background.jpg'),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fulano',
                      style: theme.textTheme.headlineLarge?.copyWith(
                        color: theme.colorScheme
                            .onPrimary, // Cor do texto no fundo primário
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'fulano@upe.br',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimary
                            .withOpacity(0.8), // Texto mais claro
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          //Aqui fazer as opções do Menu
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
            leading: Icon(Icons.home),
            title: Text(
              'Início',
              style: theme.textTheme.titleLarge,
            ),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text(
              'Minhas Receitas',
              style: theme.textTheme.titleLarge,
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'Sobre',
              style: theme.textTheme.titleLarge,
            ),
          ),
          ListTile(
            leading: Icon(AppController.instance.isDarkTheme
                ? Icons.mode_night_outlined
                : Icons.mode_night),
            title: Text(
              AppController.instance.isDarkTheme ? 'Modo Claro' : 'Modo Escuro',
              style: theme.textTheme.titleLarge,
            ),
            onTap: () {
              AppController.instance.changeTheme();
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              'Sair',
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.all(16.0), // Espaçamento em torno do texto
            child: Column(
              children: [
                Text(
                  'App desenvolvido durante a disciplina de Dispositivos Móveis da Universidade de Pernambuco Campus Garanhuns',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey, // Cor do texto no rodapé
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Prof. Élisson Rocha',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey, // Cor do texto no rodapé
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
