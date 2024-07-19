import 'dart:collection';

main(){
  List lista = ['victor', 'diego'];
  Map mapa = {'nome':'diego'};
  Queue fila = Queue();
  Set conjunto = Set();

  fila.add('diego');
  lista.add('victor');

  mapa['nome'] = 'victor';
  conjunto.add('victor');
  conjunto.add('victor');


  bool ce = true;
  var nome = 'rodolfo1';

  List lista1 = ['ramon', 'ronaldo'];
  print(lista1);
  //spread operator 
  List lista2 = ['vitor', 'diego', ...lista1];
  lista2.addAll(lista1);
  //collection if e collection for
  List lista3 = ['vitor', 'diego', ...lista1, ...lista2, if(nome=='rodolfo') nome, lista1, for(var n = 1; n < 10; n++) if(n%2==0) n.toString() ];


  print(lista3);
}


