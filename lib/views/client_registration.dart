import 'package:flutter/material.dart';

import '../widgets/drawer_options.dart';

class ClientRegistration extends StatefulWidget {
  const ClientRegistration({super.key});

  @override
  State<ClientRegistration> createState() => _ClientRegistrationState();
}

class _ClientRegistrationState extends State<ClientRegistration> {
  String clienteNome = '';
  String clienteEmail = '';
  String clienteLocal = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: DrawerOptions(),
    appBar: AppBar(
      title: const Text("Cadastro"),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text("Cadastro de Cliente", style: TextStyle(fontSize: 40)),
            const SizedBox(
              height:50,
            ),
            TextField(
              onChanged: (text) {
                clienteNome = text;
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
              onChanged: (text){
                clienteEmail = text;
              },
              decoration: const InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  final confirmaCadastro = SnackBar(
                      content: Text("Cliente cadastrado"));
                  ScaffoldMessenger.of(context).showSnackBar(confirmaCadastro);
                },
                child: const Text("SALVAR"))

          ],
        ),
      ),
    ),
    );
  }
}
