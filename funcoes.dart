


 String imprimeNome(String sexo,{  String? nome,  required int idade}){

  try{
    return nome!;
  }catch(erro){
    return erro.toString();
     
  }
  
}

String imprimeIdade(String idade) => idade;

int imprimeIdade2({int idade = 17}) {
  return idade;
}

String? imprimeSexo(String nome,[String? sexo]) {
  return sexo;
}


String demanda_interna(){
  return '';
}

void main(){
  

String retorno = imprimeNome( '',idade: 42, nome: 'victor');
print('retorno: $retorno');
print(imprimeIdade2());

imprimeSexo('');
}

