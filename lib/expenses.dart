import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/expense.dart';
import 'package:flutter_application_1/models/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses ({super.key});

 @override
 State<StatefulWidget> createState() {
   throw UnimplementedError();
   return _ExpensesState();
   } 
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title:'IvekCourse', 
      amount: 23.99, 
      date: DateTime.now(), 
      category: Category.work,
    ),
    Expense(
      title:'Cinema', 
      amount: 15.69, 
      date: DateTime.now(), 
      category: Category.leisure,
    ),
  ];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
    body: Column(
      children: [
        Text('The chart'),
 //       Text('Expense list...'), 
        ExpensesList(expenses: _registeredExpenses)
       ],
      )
   );
 }
}

