import 'package:daily_expences/widgets/new_transaction.dart';
import 'package:daily_expences/widgets/transactionList.dart';
import 'package:daily_expences/widgets/userTransaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daily Expences'),
          centerTitle: true,
          backgroundColor: Colors.pink.shade700,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.orange.shade100,
                Colors.red.shade500,
              ],
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [UserTransaction()],
            ),
          ),
        ),
      ),
    );
  }
}
