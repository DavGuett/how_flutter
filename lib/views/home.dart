import 'package:flutter/material.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class Home extends StatelessWidget {
   Home({super.key});
   // Lista de funcionários para preencher a listagem inicialmente, já que a persistência de dados ainda não foi implementada.
  final List<String> funcionarios = <String>["David", "João", "Maria"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: const Text("Flutter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        // Retorna uma ListView com separador já incluso
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: funcionarios.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              child: Center(
                // Widget de texto que vai pegar o conteúdo da lista de funcionários no index especificado com base na contagem de itens, que não é simplesmente o tamanho da lista de funcionários
                child: Text("${funcionarios[index]}"),
              ),
            );
          },
          // Construtor do separador para manter mais organizado a lista.
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        ) ,
      ),
    );
  }
}
