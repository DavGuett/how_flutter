import 'package:flutter/material.dart';
import 'package:how_flutter/views/home.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class EmployeeRegistration extends StatefulWidget {
  const EmployeeRegistration({super.key});

  @override
  State<EmployeeRegistration> createState() => _EmployeeRegistrationState();
}

class _EmployeeRegistrationState extends State<EmployeeRegistration> {
  String funcionarioNome = "";
  String funcionarioEmail = "";

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
              const Text("Cadastro de Funcionario", style: TextStyle(fontSize: 40)),
              const SizedBox(
                height:50,
              ),
              TextField(
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
                onChanged: (text){
                  funcionarioEmail = text;
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
                    print(funcionarioNome);
                    print(funcionarioEmail);
                  },
                  child: const Text("SALVAR"))
            ],
          ),
        ),
      ),
    );
  }
}
