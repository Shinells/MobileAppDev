import 'package:flutter/material.dart';

class BillsPaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bills = ['Electricity', 'Water', 'Internet', 'TV Subscription'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Pay Bills"),
        backgroundColor: Color(0xFF014e80),
      ),
      body: ListView.builder(
        itemCount: bills.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bills[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Add logic to navigate or input details
            },
          );
        },
      ),
    );
  }
}
