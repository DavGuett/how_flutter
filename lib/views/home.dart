import 'package:flutter/material.dart';
import 'package:how_flutter/widgets/drawer_options.dart';

class Home extends StatelessWidget {
   Home({super.key});
  final List<String> funcionarios = <String>["David", "João", "Maria"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOptions(),
      appBar: AppBar(
        title: const Text("Flutter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: funcionarios.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              child: Center(
                child: Text("${funcionarios[index]}"),
              ),
            );
          },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        ) ,
      ),
    );
  }
}
