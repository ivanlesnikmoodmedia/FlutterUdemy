import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/expense.dart';

class ExpenseBucket {
  ExpenseBucket({required this.category, required this.expenses});

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    return expenses.fold(0.0, (sum, item) => sum + item.amount);
  }

  // Create a bucket for a specific category from a list of expenses
  factory ExpenseBucket.forCategory(
    List<Expense> allExpenses,
    Category category,
  ) {
    return ExpenseBucket(
      category: category,
      expenses: allExpenses.where((e) => e.category == category).toList(),
    );
  }
}
