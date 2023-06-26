import 'package:flutter/material.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

import '../main.dart';

class EmployeeRegistration extends StatefulWidget {
  const EmployeeRegistration({super.key});

  @override
  State<EmployeeRegistration> createState() => _EmployeeRegistrationState();
}

class _EmployeeRegistrationState extends State<EmployeeRegistration> {
  // Strings para nome e email que são instanciadas vazias
  String funcionarioNome = "";
  String funcionarioEmail = "";

  // Foram utilizados vários widgets diferentes para criar a aparência desejada do cadastro, com SizedBox que agem como margem
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: const Text("Cadastro"),
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
              const Text("Cadastro de Funcionario", style: TextStyle(fontSize: 40)),
              const SizedBox(
                height:50,
              ),
              TextField(
                // Essa função recebe como paramêtro o texto digitado e atualiza a variável de nome com o conteúdo assim que o campo muda
                onChanged: (text) {
                  funcionarioNome = text;
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
                // Essa função recebe como paramêtro o texto digitado e atualiza a variável de email com o conteúdo assim que o campo muda
                onChanged: (text){
                  funcionarioEmail = text;
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
                        content: Text("Funcionario cadastrado"));
                    ScaffoldMessenger.of(context).showSnackBar(confirmaCadastro);
                    await supabase.from("funcionario").insert({'nome': funcionarioNome, 'email': funcionarioEmail});

                  },
                  child: const Text("SALVAR"))

            ],
          ),
        ),
      ),
    );
  }
}
