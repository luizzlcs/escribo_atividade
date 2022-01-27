import 'dart:math';
import 'dart:io';

main() {
  print(
      "Escolha uma opção: \n [1] Inserir um número. \n [2] Número aleatório.");
  String opcao = stdin.readLineSync()!;

  switch (opcao) {
    case '1':
      print('Agora é sua vez, digite um valor:');
      String inserir = stdin.readLineSync()!;
      var converte = int.parse(inserir);
      sortearNumero(converte);
      break;

    case '2':
      int sorteado = Random().nextInt(100);
      sortearNumero(sorteado);
  }
}

sortearNumero(int numero) {
  if (numero < 0) {
    return 'insira o número maior que zero';
  }
  List numSortDivESomados = [];

  for (int i = 1; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      numSortDivESomados.add(i);
    }
  }
  print('--------------------------------');
  print('O número passado foi: $numero');
  print('Lista de números recebidos do cálculo foi: $numSortDivESomados');
  print(
      'A soma dos números listados é: ${numSortDivESomados.reduce((value, element) => value + element)}');
  print('--------------------------------');
  return numSortDivESomados.reduce((value, element) => value + element);
}
