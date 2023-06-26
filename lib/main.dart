import 'package:flutter/material.dart';
import 'package:how_flutter/views/client_registration.dart';
import 'package:how_flutter/views/employee_registration.dart';
import 'package:how_flutter/views/home.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://xoxkvmtxtqskhkqxbfgz.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhveGt2bXR4dHFza2hrcXhiZmd6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODY5NDYyNTcsImV4cCI6MjAwMjUyMjI1N30.zCe4nx6jdKU1jsS8fAz3-bacmlPjD1IZI1XTAHDzycU",
  );
  runApp(const MyApp());
}
final supabase = Supabase.instance.client;
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
      // Criação das rotas direto no arquivo de inicialização do programa
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'registrarFuncionario': (context) => EmployeeRegistration(),
        'registrarCliente': (context) => ClientRegistration(),
      },
    );
  }
}


