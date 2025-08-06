import 'package:flutter/material.dart';

class SaldoMes extends StatefulWidget {
  const SaldoMes({super.key});

  @override
  State<SaldoMes> createState() => _SaldoMesState();
}

class _SaldoMesState extends State<SaldoMes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Aqui será exibido o saldo do mês.'),
      )
    );
  }
}