import 'package:flutter/material.dart';
import 'models/mostra_clientes.dart';
import 'models/valores_mes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => const MostraClientes(),
        '/saldo': (context) => const SaldoMes(),
      },
    );
  }
}
