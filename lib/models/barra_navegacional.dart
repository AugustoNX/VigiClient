import 'package:flutter/material.dart';
import 'mostra_clientes.dart';
import 'valores_mes.dart';
import 'relatorios.dart';

class BarraNavegacional extends StatefulWidget {
  const BarraNavegacional({super.key});

  @override
  State<BarraNavegacional> createState() => _BarraNavegacionalState();
}

class _BarraNavegacionalState extends State<BarraNavegacional> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    MostraClientes(),  
    SaldoMes(),
    Relatorios(), 
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Saldo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
        backgroundColor: const Color(0xFF001F3F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 10,
      ),
    );
  }
}
