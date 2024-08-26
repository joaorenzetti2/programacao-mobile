import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Banco',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BankHomePage(),
    );
  }
}

class BankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          BankCard(
            nomeBanco: 'Itau',
            tipoConta: 'Conta Corrente',
            saldo: 'R\$ 5.000,00',
          ),
          BankCard(
            nomeBanco: 'Nubank',
            tipoConta: 'Conta Poupança',
            saldo: 'R\$ 2.300,00',
          ),
          BankCard(
            nomeBanco: 'Santander',
            tipoConta: 'Conta Investimento',
            saldo: 'R\$ 10.000,00',
          ),
        ],
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  final String nomeBanco;
  final String tipoConta;
  final String saldo;

  BankCard({
    required this.nomeBanco,
    required this.tipoConta,
    required this.saldo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(Icons.account_balance, color: Colors.blue),
        title: Text(nomeBanco),
        subtitle: Text(tipoConta),
        trailing: Text(saldo, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
