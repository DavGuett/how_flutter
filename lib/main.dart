import 'package:flutter/material.dart';
import 'package:how_flutter/views/client_registration.dart';
import 'package:how_flutter/views/employee_registration.dart';
import 'package:how_flutter/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testando Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'registrarFuncionario': (context) => EmployeeRegistration(),
        'registrarCliente': (context) => ClientRegistration(),
      },
    );
  }
}


