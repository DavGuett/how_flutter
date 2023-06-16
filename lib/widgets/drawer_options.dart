import 'package:flutter/material.dart';

class DrawerOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            title: Text("Setores"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Clientes"),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],

      ),
    );
  }

}