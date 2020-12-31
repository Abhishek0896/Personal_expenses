import 'package:flutter/material.dart';
import './Transaction_list.dart';
import './new_transactions.dart';
import '../models/Transaction.dart';


class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction =[Transaction(id:'t1',title:'New Shoe',amount: 69.99,date :DateTime.now()),
    Transaction(id:'t2',title:'Weekly Groceries',amount: 16.53,date :DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount){
    final newtx= Transaction(id: DateTime.now().toString(),title: title,amount: amount,date: DateTime.now());

    setState(() {
      _userTransaction.add(newtx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction)
      ],
    );
  }
}
