import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Services'),
        backgroundColor: Color(0xFF014e80),
      ),
      body: ListView(
        children: [
          _cardItem('Virtual Cards'),
          _cardItem('Debit Cards'),
          _cardItem('Manage Cards'),
          _cardItem('Credit Card Repayment'),
          _cardItem('Prepaid Card TopUp'),
        ],
      ),
    );
  }

  Widget _cardItem(String title) {
    return ListTile(
      leading: Icon(Icons.credit_card, color: Colors.blue),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {},
    );
  }
}
