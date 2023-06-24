import 'package:flutter/material.dart';

class DrawerOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // O Drawer é responsável por criar uma navegação com o famoso menu hamburguer, criando uma estrutura básica com links, títulos e até mesmo ícones
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              child: Text("Sistema Interno")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
            // Ao apertar o Tile com título de Início, o classe Navigator nativa do Flutter substitui o conteúdo do contexto (tela) pela rota especificada, definada previamente no arquivo main.dart, isso vale para todas as rotas do aplicativo
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            title: Text("Funcionarios"),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('registrarFuncionario');
            },
          ),
          ListTile(
            title: Text("Clientes"),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('registrarCliente');
            },
          )
        ],

      ),
    );
  }

}