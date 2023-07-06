class Funcionario {
  int _Id = 0;
  String _Nome = "";
  String _Email = "";

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

  String get Email => _Email;

  String get Nome => _Nome;

  @override
  String toString() {
    return 'Sou o funcionário com Id: $_Id, Nome: $_Nome e Email: $_Email';
  }
}