// Classe, nome da Classe, Parametros da Classe, comportamento da Classe

class Camiseta {
  String? tamanho;
  String? cor;
  String? marca;

  // Comportamento
  String podeSecarNoSol() {
    if (marca == 'Nike') {
      return 'Não pode secar no sol';
    } else {
      return 'Pode secar no sol';
    }
  }
}

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print('''
Tamanho: ${camisetaNike.tamanho}
Cor: ${camisetaNike.cor}
Marca: ${camisetaNike.marca}
Pode secar no sol: ${camisetaNike.podeSecarNoSol()}
''');
}
