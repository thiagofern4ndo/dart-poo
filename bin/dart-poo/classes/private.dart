class Usuario {
  String nome;
  int _cpf; // atributo privado, só pode ser acessdo dentro do escopo da classe

  // Construtor da class

  Usuario(this.nome, this._cpf);

  // Getter para acessar o CPF fora da classe

  int get cpf => _cpf;

  // Setter para modificar o CPF com validação

  set cpf(int novoCpf) {
    if (novoCpf.toString().length == 11) {
      _cpf = novoCpf;
      
    } else {
      print('Erro: o CPF deve conter 11 dígitos.');
    }
  }
}

void main () {
// Instanciando Usuario
var usuario = Usuario('Thiago', 12345678912);

print(usuario.cpf);


}