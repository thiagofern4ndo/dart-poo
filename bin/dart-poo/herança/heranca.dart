class Carro {
  String fabricante;
  int ano;

  Carro(this.fabricante, this.ano);

  void mostrarCaracteristicas () {
    print('Esse veiculo foi fabricado pela $fabricante e é do ano $ano ');
  }
}

class Moto extends Carro {

Moto(super.fabricante,super.ano );

@override
  void mostrarCaracteristicas() {
    super.mostrarCaracteristicas();
    print('Esse veiculo é uma moto');
  }

}

void main() {
  Moto moto1 = Moto('Honda', 2020);
  moto1.mostrarCaracteristicas();
}