import 'package:flutter/material.dart';
import 'package:how_flutter/main.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class Home extends StatelessWidget {
   Home({super.key});
   // Lista de funcionários para preencher a listagem inicialmente, já que a persistência de dados ainda não foi implementada.
  final future = supabase.from('funcionario').select<List<Map<String, dynamic>>>();

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
      body: FutureBuilder<List<Map<String, dynamic>>>(
            future: future,
            builder: (context, snapshot) {
              if(!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final funcionarios = snapshot.data!;
              return ListView.builder(
                  itemCount: funcionarios.length,
                  itemBuilder: ((context, index) {
                    final funcionario = funcionarios[index];
                    return ListTile(
                      title: Text(funcionario['nome']),
                    );
              }));
            }
      )
    );
  }
}
