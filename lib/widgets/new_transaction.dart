import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {


  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Title',
            ),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            controller: amountController,
          ),
          TextButton(
            onPressed: () => {
              addNewTransaction(titleController.text,double.parse(amountController.text)),
            },
            child: Text(
              'Add Transaction',
              style: TextStyle(color: Colors.purple),
            ),
          )
        ],
      ),
    );
  }
}
