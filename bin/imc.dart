import 'dart:convert';

import 'package:imc/imc.dart' as imc;
import 'package:imc/Classes/Pessoa.dart';
import 'dart:io';

void main(List<String> arguments) {
  try {
    var p1 = Pessoa();

    print('Bem vindo a calculadora de IMC!');
    p1.nome = lerConsole("Adicione o seu Nome:");
    print('Olá ${p1.nome}');
    p1.altura = double.parse(lerConsole("Agora adicione sua altura em M:"));
    p1.peso = double.parse(lerConsole("Adicione o seu peso em KG:"));
    p1.resultado = CalcularIMC(p1.peso, p1.altura);
    print('${p1.nome}, seu IMC é ${p1.resultado}');

    if (p1.resultado < 16) {
      print("O seu resultado indica MAGREZA GRAVE");
    } else if (p1.resultado < 17) {
      print("O seu resultado indica MAGREZA MODERADA");
    } else if (p1.resultado < 18.5) {
      print("O seu resultado indica MAGREZA LEVE");
    } else if (p1.resultado < 25) {
      print("O seu resultado indica SAUDÁVEL");
    } else if (p1.resultado < 30) {
      print("O seu resultado indica SOBREPESO");
    } else if (p1.resultado < 35) {
      print("O seu resultado indica OBESIDADE GRAU I");
    } else if (p1.resultado < 40) {
      print("O seu resultado indica OBESIDADE GRAU II (SEVERA)");
    } else
      print("O seu resultado indica OBESIDADE GRAU III (MÓRBIDA)");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double CalcularIMC(double peso, double altura) {
  var imc = (peso / (altura * altura));

  return imc;
}
