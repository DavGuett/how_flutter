import 'package:flutter/material.dart';
import 'package:how_flutter/views/home.dart';

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
      drawer: DrawerOpcoes(),
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Cadastro de Funcionario", style: TextStyle(fontSize: 40)),
              SizedBox(
                height:50,
              ),
              TextField(
                onChanged: (text) {
                  funcionarioNome = text;
                },
                decoration: InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text){
                  funcionarioEmail = text;
                },
                decoration: InputDecoration(
                  labelText: "E-mail",
                    border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(funcionarioNome);
                    print(funcionarioEmail);
                  },
                  child: Text("SALVAR"))
            ],
          ),
        ),
      ),
    );
  }
}
