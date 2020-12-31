import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addtx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addtx);


   void submitData(){
     final enteredTitle = titleController.text;
     final enteredAmount = double.parse(amountController.text);
     if(enteredTitle.isEmpty || enteredAmount <=0){
       return;
     }
    addtx(titleController.text, double.parse(amountController.text));
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: 'Title'
              ),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Amount'
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              onPressed: submitData,
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
