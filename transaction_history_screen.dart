import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(title: 'Transfer to MTN', amount: '-GHS 200.00', date: 'Jul 5'),
    Transaction(title: 'Salary Credit', amount: '+GHS 2,500.00', date: 'Jul 1'),
    Transaction(title: 'Water Bill', amount: '-GHS 80.00', date: 'Jun 30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction History"),
        backgroundColor: Color(0xFF014e80),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final txn = transactions[index];
          return ListTile(
            leading: Icon(Icons.history),
            title: Text(txn.title),
            subtitle: Text(txn.date),
            trailing: Text(
              txn.amount,
              style: TextStyle(
                color: txn.amount.startsWith('-') ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
