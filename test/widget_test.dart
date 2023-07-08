// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:how_flutter/widgets/drawer_options.dart';


Future<void> main() async {

  testWidgets('Home tem título na AppBar', (tester) async {
    // Test code goes here
    final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
    await tester.pumpWidget(
      new MaterialApp(
        home: new Builder(
          builder: (BuildContext context) {
            return new Scaffold(
              key: scaffoldKey,
              drawer: DrawerOptions(),
              appBar: AppBar(
                title: Text("Início"),
                key: Key('chave-topo-tela'),
              ),
              body: Center(
                child:Column(
                  key: Key('coluna-principal'),
                  children: [
                    Text("Hands on Work", style: TextStyle(fontSize: 30), key: Key('titulo-principal')),
                    Text("Para começar, utilize o drawer/menu hamburguer para listar os funcionários ou clientes")
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
    await tester.pump();
    final Finder appBarTituloFinder = find.byKey(Key('chave-topo-tela'));
    expect(appBarTituloFinder, findsOneWidget);
  });
  testWidgets("Home tem o titulo do trabalho ", (widgetTester) async {
    final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
    await widgetTester.pumpWidget(
      new MaterialApp(
        home: new Builder(
          builder: (BuildContext context) {
            return new Scaffold(
              key: scaffoldKey,
              drawer: DrawerOptions(),
              appBar: AppBar(
                title: Text("Início"),
                key: Key('chave-topo-tela'),
              ),
              body: Center(
                child:Column(
                  key: Key('coluna-principal'),
                  children: [
                    Text("Hands on Work", style: TextStyle(fontSize: 30), key: Key('titulo-principal')),
                    Text("Para começar, utilize o drawer/menu hamburguer para listar os funcionários ou clientes")
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
    await widgetTester.pump();
    final Finder tituloFinder = find.descendant(of: find.byKey(Key('coluna-principal')), matching: find.byKey(Key('titulo-principal')));
    expect(tituloFinder, findsOneWidget);
  });
}

