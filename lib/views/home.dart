import 'package:flutter/material.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: const Text("Flutter foda"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: ListView(
          children: const [
            Text("Teste", style:TextStyle(fontSize: 40)),

          ],
        ) ,
      ),
    );
  }
}
