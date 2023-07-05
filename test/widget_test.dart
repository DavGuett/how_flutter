// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:how_flutter/main.dart';
import 'package:how_flutter/models/funcionario.dart';
import 'package:how_flutter/views/edit_employee.dart';
import 'package:how_flutter/views/employee_list.dart';
import 'package:how_flutter/views/home.dart';
import 'package:how_flutter/widgets/drawer_options.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {

  testWidgets('EmployeeEditing recebe os parametros certos', (tester) async {
    // Test code goes here
    final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
    BuildContext savedContext;
    await tester.pumpWidget(
      new MaterialApp(
        home: new Builder(
          builder: (BuildContext context) {
            savedContext = context;
            return new Scaffold(
              key: scaffoldKey,
              drawer: DrawerOptions(),
              appBar: AppBar(
                title: Text("Início"),
              ),
              body: Center(
                child:Column(
                  children: [
                    Text("Hands on Work", style: TextStyle(fontSize: 30),),
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
    final Finder appBarTituloFinder = find.widgetWithText(Text, "Início");
    expect(appBarTituloFinder, findsOneWidget);
  });

}

