import 'package:flutter/material.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/components/editor.dart';


class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValorConta =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
                controlador: _controladorCampoNumeroConta,
                rotulo: 'Número da conta',
                dica: '000000000',
                icone: Icons.person),
            Editor(
                controlador: _controladorCampoValorConta,
                rotulo: 'Valor',
                dica: '0,00',
                icone: Icons.attach_money),
            RaisedButton(
              onPressed: () => _transfere(context),
              child: Text('Confirmar transferência'),
            ),
          ],
        ),
      ),
    );
  }

  void _transfere(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valorConta = double.tryParse(_controladorCampoValorConta.text);

    if (valorConta != null && numeroConta != null) {
      final valortransferido = Transferencia(valorConta, numeroConta);
      debugPrint('$valortransferido');
      Navigator.pop(context, valortransferido);
    }
  }
}
