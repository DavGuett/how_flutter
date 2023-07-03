import 'package:flutter/material.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: Text("Início"),
      ),
      body: Center(
        child:Column(
          children: [
            Text("Hands on Work", style: TextStyle(fontSize: 30),),
            Text("Para começar, utilize o drawer/menu hamburguer para listar os funcionários ou clientes")
          ],
        ),
      )
    );
  }
}
