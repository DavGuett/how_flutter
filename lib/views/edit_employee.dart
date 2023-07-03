import 'package:flutter/material.dart';
import 'package:how_flutter/models/funcionario.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

import '../main.dart';

class EmployeeEditing extends StatelessWidget {
  final Funcionario funcionario;

  EmployeeEditing({super.key, required this.funcionario});

  // Strings para nome e email que são instanciadas vazias
  String funcionarioNome = "";

  String funcionarioEmail = "";

  // Foram utilizados vários widgets diferentes para criar a aparência desejada do cadastro, com SizedBox que agem como margem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: const Text("Edição"),
      ),
      // Widget SingleChildScrollView serve para que seja possível rolar para baixo ao clicar num dos campos de texto, já que o teclado fica em cima deles
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //Alinhamento da coluna no centro
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text("Edição de Funcionario", style: TextStyle(fontSize: 40)),
              const SizedBox(
                height:50,
              ),
              TextField(
                controller: TextEditingController(text: funcionario.Nome),
                onChanged: (text) {
                  funcionarioNome = text;
                  funcionario.Nome = funcionarioNome;
                },
                decoration: const InputDecoration(
                    labelText: "Nome",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: TextEditingController(text: funcionario.Email),
                onChanged: (text){
                  funcionarioEmail = text;
                  funcionario.Email = funcionarioEmail;
                },
                decoration: const InputDecoration(
                    labelText: "E-mail",
                    border: OutlineInputBorder()
                ),
                // Define o tipo de teclado que aparecerá
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                // Botão que ao ser pressionado, cria uma snackbar confirmando o cadastro do funcionário e a exibe na parte de baixo da tela
                  onPressed: () async {
                    final confirmaCadastro = SnackBar(
                        content: Text("Funcionario editado"));
                    ScaffoldMessenger.of(context).showSnackBar(confirmaCadastro);
                    await supabase.from("funcionario").update({'nome': funcionario.Nome, 'email': funcionario.Email}).match({'id': funcionario.Id});
                    //await supabase.from("funcionario").insert({'nome': funcionarioNome, 'email': funcionarioEmail});

                  },
                  child: const Text("SALVAR"))

            ],
          ),
        ),
      ),
    );
  }
}
