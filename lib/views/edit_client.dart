import 'package:flutter/material.dart';
import 'package:how_flutter/models/cliente.dart';
import 'package:how_flutter/models/funcionario.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

import '../main.dart';

class ClientEditing extends StatelessWidget {
  final Cliente cliente;

  ClientEditing({super.key, required this.cliente});

  // Strings para nome e email que são instanciadas vazias
  String clienteNome = "";

  String clienteEmail = "";
  String clienteLocal = "";

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
              const Text("Edição de Cliente", style: TextStyle(fontSize: 40)),
              const SizedBox(
                height:50,
              ),
              TextField(
                controller: TextEditingController(text: cliente.Nome),
                onChanged: (text) {
                  clienteNome = text;
                  cliente.Nome = clienteNome;
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
                controller: TextEditingController(text: cliente.Email),
                onChanged: (text){
                  clienteEmail = text;
                  cliente.Email = clienteEmail;
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
              TextField(
                controller: TextEditingController(text: cliente.Local),
                onChanged: (text){
                  clienteLocal = text;
                  cliente.Local = clienteLocal;
                },
                decoration: const InputDecoration(
                    labelText: "Local",
                    border: OutlineInputBorder()
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                // Botão que ao ser pressionado, cria uma snackbar confirmando o cadastro do funcionário e a exibe na parte de baixo da tela
                  onPressed: () async {
                    final confirmaCadastro = SnackBar(
                        content: Text("Cliente editado"));
                    ScaffoldMessenger.of(context).showSnackBar(confirmaCadastro);
                    await supabase.from("cliente").update({'nome': cliente.Nome, 'email': cliente.Email, 'local': cliente.Local}).match({'id': cliente.Id});

                  },
                  child: const Text("SALVAR"))

            ],
          ),
        ),
      ),
    );
  }
}
