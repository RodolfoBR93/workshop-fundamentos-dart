
//exemplo criação de classe
class Pessoa{
  //atributos
  final String nome;
  late String? cpf;
  int idade;

  //construtor com parametros obrigatórios
  Pessoa({ required this.nome, this.cpf, required this.idade});

  //métodos
  String getNome(){
    return this.nome;
  }

  void SetIdade(int idade){
    this.idade=idade;
  }

  int getIdade(){
    return this.idade;
  }

}

void main(){  
  
  Pessoa pessoa = new Pessoa(nome: "Rodolfo", idade:18);

  print(pessoa.getNome());
  pessoa.SetIdade(25);
  print(pessoa.getIdade());

} 