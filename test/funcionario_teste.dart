import 'package:flutter_test/flutter_test.dart';
import 'package:how_flutter/models/funcionario.dart';

void main() {
  final funcionario = new Funcionario();
  funcionario.Id = 3;
  funcionario.Nome = "David";
  funcionario.Email = "david@mail.com";
  test("description", () =>
      expect(funcionario.toString(), "Sou o funcionário com Id: 3, Nome: David e Email: david@mail.com")
  );


}