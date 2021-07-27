import 'package:flutter/material.dart';

import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses Control',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 45.66,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Book',
      amount: 22.13,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Expenses Control'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.blue,
              elevation: 5,
              child: Container(
                width: double.infinity,
                child: Text('Chart!'),
              ),
            ),
            Card(
              color: Colors.red,
              child: Text('List of TX!'),
            ),
          ],
        ),
      ),
    );
  }
}
