import 'package:flutter/material.dart';

class AccountsAndBalancesScreen extends StatelessWidget {
  final List<Map<String, String>> accounts = [
    {"type": "Savings", "number": "**1234", "balance": "GHS 1,200.50"},
    {"type": "Current", "number": "**5678", "balance": "GHS 3,890.00"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accounts & Balances"),
        backgroundColor: Color(0xFF014e80),
      ),
      body: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          final acc = accounts[index];
          return Card(
            child: ListTile(
              title: Text("${acc['type']} Account (${acc['number']})"),
              subtitle: Text("Balance: ${acc['balance']}"),
            ),
          );
        },
      ),
    );
  }
}
