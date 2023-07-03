import 'package:flutter/material.dart';
import 'package:how_flutter/main.dart';
import 'package:how_flutter/models/funcionario.dart';
import 'package:how_flutter/views/edit_employee.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class EmployeeList extends StatelessWidget {
  EmployeeList({super.key});
  // Lista de funcionários para preencher a listagem inicialmente, já que a persistência de dados ainda não foi implementada.
  final _funcionariosStream = supabase.from('funcionario').stream(primaryKey: ['id']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: const Text("Flutter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('registrarFuncionario');
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: _funcionariosStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final funcionarios = snapshot.data!;
          return ListView.builder(
              itemCount: funcionarios.length,
              itemBuilder: ((context, index) {

                final funcionarioSupabase = funcionarios[index];
                final funcionario = Funcionario();
                funcionario.Id = funcionarioSupabase['id'];
                funcionario.Nome = funcionarioSupabase['nome'];
                funcionario.Email = funcionarioSupabase['email'];
                return ListTile(
                  title: Text(funcionario.Nome),
                  subtitle: Text(funcionario.Email),
                  trailing: Container(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              // Navigator.of(context).pushNamed('editarFuncionario');
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => EmployeeEditing(funcionario: funcionario)));
                            },
                            color: Colors.amberAccent,
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () async {
                              await supabase.from('funcionario').delete().match({'id': funcionario.Id});
                            },
                            color: Colors.red,
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }));
        },
      ),
    );
  }
}
