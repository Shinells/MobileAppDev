import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class MoreScreen extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      "title": "Pay Bills",
      "icon": Icons.receipt_long,
      "route": AppRoutes.bills,
    },
    {
      "title": "Accounts & Balances",
      "icon": Icons.account_balance_wallet,
      "route": AppRoutes.accounts,
    },
    {
      "title": "Transaction History",
      "icon": Icons.history,
      "route": AppRoutes.history,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More Options"),
        backgroundColor: Color(0xFF014e80),
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (context, index) {
          final item = options[index];
          return ListTile(
            leading: Icon(item['icon'], color: Color(0xFF014e80)),
            title: Text(item['title']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, item['route']);
            },
          );
        },
      ),
    );
  }
}
