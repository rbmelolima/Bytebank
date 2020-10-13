class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(
    this.valor,
    this.numeroConta,
  );

  @override
  String toString() {
    return 'O valor: $valor foi transferido para a conta: $numeroConta';
  }
}
