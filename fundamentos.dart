
//tudo em Dart é um Objeto
import 'dart:io';
import 'controle_de_fluxo.dart';



void main(){
//tipos embutidos da lingugem
  String? nome;
  int? idade;
  double? altura;
  double? peso;
  bool? adulto;
  String? sexo;
  Function getIdade;

  //uso do Map, também conhecido como Hash Table, Dicionário em outras linguagens
  Map<String, Object?> filhos ={'nome': "rodolfo", 'nome2': "String", "String":"String", "String": {}, 'nome4':null, 'nome5':Set};
    Map<String, dynamic> mapa;
  mapa = {"chave1": "valor1", "chave2": 1, "chave3": 3.56};

  //função anônima
  getIdade = (idade){
      return idade;
  };

  //uso de var para inferência de tipo
  var nome2;
  //uso de contante com const ou final, diferença é que final posso primeiro declarar e instanciar mais tarde
  const nome3 = 'rodolfo';
  final nome4;
  //dynamic remove a verificação de tipagem
  dynamic nome5 = 'rodolfo';




  nome5 = 1;
  nome4='bruno';
  
  //se...senão
  if(1==2){
    nome2=1;
  }else{
    nome2='';
  }
  print(nome2.length);


  //entrada e saida de dados
  print('Nome:');
  nome = stdin.readLineSync();
  print('Idade:');
  idade = int.parse(stdin.readLineSync() as String) ;
  print('Altura:');
  altura = double.parse(stdin.readLineSync() as String);
  print('Peso:');
  peso = double.parse(stdin.readLineSync() as String);
  print('Sexo:');
  sexo = stdin.readLineSync();


  //Null Safety
  //uma variável só pode ser nula se o programador especificar
  String? cpf;
  if(1==2){
    cpf='';
  }
  
  print(cpf?.length);


  //inferencia de tipo com const e final
  const  cor = 'vermelho';
  final  tipo;
  tipo = 'masculino';

 //inferencia de tipo com variável
  String rg = '42';

  //convertendo int ou double para String
  String a = rg.toString();

  //convertendo  string para double ou int
  double b = double.parse(rg);

  //coerção de tipo
  double c = rg as double;

  //convertendo double para int e vice versa
  idade = 17;
  double d = idade.toDouble();


  print(b);

  //chamada função
  getIMC('rodolfo',altura: 2,);

}

//exemplos de função
String getIMC(String nome,{ double? peso = 0,  double? altura = 0}) => ( peso ?? 2 /(altura!*2)).toString();

String getIMC2(String nome,{ double? peso,  double? altura}){
  if( peso == null) return '';

  return ( peso/(altura!*2)).toString();

}


