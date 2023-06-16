import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOpcoes(),
      appBar: AppBar(
        title: Text("Flutter foda"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ListView(
          children: [
            Text("Teste", style:TextStyle(fontSize: 40)),

          ],
        ) ,
      ),
    );
  }
}
class DrawerOpcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              child: Text("Sistema Interno")),
          ListTile(
            title: Text("Setores"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Clientes"),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],

      ),
    );
  }

}