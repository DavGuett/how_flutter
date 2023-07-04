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
    await tester.pumpWidget(MaterialApp(home:Home()));
    final homeIconeFinder = find.byIcon(Icons.home);
    final Icon homeIcone = tester.widget(homeIconeFinder);
    expect(homeIcone, findsOneWidget);
  });
}

