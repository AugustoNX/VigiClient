import 'package:flutter/material.dart';
import 'valores_mes.dart';

class MostraClientes extends StatefulWidget {
  const MostraClientes({super.key});

  @override
  State<MostraClientes> createState() => _MostraClientesState();
}

class _MostraClientesState extends State<MostraClientes> {
  int opcaoselecionada = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> paginas = [
      Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            'Clientes',
            style: TextStyle(
                color: Color(0xFF001F3F),
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Total: ${clientes.length}',
            style: TextStyle(
                color: Color(0xFF787878),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(child: ListaDeClientes()),
        ],
      ),
      const SaldoMes(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: opcaoselecionada,
        children: paginas,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: opcaoselecionada,
        onTap: (opcao) {
          setState(() {
            opcaoselecionada = opcao;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Saldo',
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> clientes = [
  {
    "nome": "Cleberson rodrigues",
    "endereco": "Rua teste, nº200",
    "tipo": "Casa",
    "valor": 35.0,
  },
  {
    "nome": "Rosimara rosa",
    "endereco": "Rua teste, nº2670",
    "tipo": "Apartamento",
    "valor": 40.0,
  },
    {
    "nome": "Rosimara rosa",
    "endereco": "Rua teste, nº2670",
    "tipo": "Apartamento",
    "valor": 40.0,
  },
];

class ListaDeClientes extends StatelessWidget {
  const ListaDeClientes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: clientes.length,
      itemBuilder: (context, index) {
        final cliente = clientes[index];
        return ClienteCard(
          nome: cliente['nome'],
          endereco: cliente['endereco'],
          tipo: cliente['tipo'],
          valor: cliente['valor'],
        );
      },
    );
  }
}

class ClienteCard extends StatelessWidget {
  final String nome;
  final String endereco;
  final String tipo;
  final double valor;

  const ClienteCard({
    super.key,
    required this.nome,
    required this.endereco,
    required this.tipo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF00203F),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                nome,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  endereco,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  "Modelo: $tipo",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Valor: R\$${valor.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
