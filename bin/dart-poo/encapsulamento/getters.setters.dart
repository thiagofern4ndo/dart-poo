class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._saldo, this._titular);

  //Getter para acessar o saldo

  double get saldo => _saldo;

  //Setter para modificar o saldo de forma controlada

  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print('O saldo não pode ser negativo');
    }
  }

//Metodo para depositar dinheiro

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Deposito de R\$ $valor realizado');
    } else {
      print('Valor invalido para deposito');
    }
  }
  // Metodo para sacar dinheiro (respeitando saldo disponivel)

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print('Saque de R\$ $valor realizado.');
    } else {
      print("Saldo insuficiente ou valor inválido");
    }
  }
}

void main() {
  ContaBancaria conta = ContaBancaria(100.00, 'Thiago');

  print("Saldo incial: R\$ ${conta.saldo}");

  conta.depositar(500);
  print('Saldo após deposito: R\$${conta.saldo}');

  conta.sacar(300);
  print('Saldo a´pos saque: R\$ ${conta.saldo}');

  // conta.saldo = -50 //seter impede valores negativo
  print('Saldo final R\$ ${conta.saldo}');
}
