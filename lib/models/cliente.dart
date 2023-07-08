class Cliente {
  int _Id = 0;
  String _Nome = "";
  String _Email = "";
  String _Local = "";

  set Id(int value) {
    _Id = value;
  }

  int get Id => _Id;

  set Email(String value) {
    _Email = value;
  }

  set Nome(String value) {
    _Nome = value;
  }

  String get Local => _Local;

  set Local(String value) {
    _Local = value;
  }

  String get Email => _Email;

  String get Nome => _Nome;

  @override
  String toString() {
    return 'Sou o cliente com id: $_Id, nome: $_Nome, e-mail: $_Email, e local de atuação: $_Local}';
  }
}