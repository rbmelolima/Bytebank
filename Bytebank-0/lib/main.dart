import 'package:flutter/material.dart';
import 'package:bytebank/screens/transferencia/lista.dart';

void main() => runApp(Bytebankapp());

class Bytebankapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData.dark(),
      home: ListaTransferecias(),
    );
  }
}
