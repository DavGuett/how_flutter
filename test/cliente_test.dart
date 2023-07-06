
import 'package:flutter_test/flutter_test.dart';
import 'package:how_flutter/models/cliente.dart';


void main() {
  final int idRecebido = 3;
  final cliente = new Cliente();
  cliente.Id = idRecebido;
  cliente.Nome = "David";
  cliente.Email = "david@mail.com";
  cliente.Local = "Itajaí - SC";
  test("description", () =>
      expect(cliente.Id, int)
  );


}