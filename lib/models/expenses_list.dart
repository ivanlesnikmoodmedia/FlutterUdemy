import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/models/expense.dart';


class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => Text(expenses[index].title),
       );
    }
}