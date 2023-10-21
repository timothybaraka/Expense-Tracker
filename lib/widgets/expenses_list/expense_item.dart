import 'package:flutter/material.dart';
import '../../models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Text(expense.title),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                      '\$${expense.amount.toStringAsFixed(2)}'), //rounds of the value to 2 dp
                  const Spacer(), //gets all the space between widgets
                  Row(
                    children: [
                      Icon(CategoryIcons[expense.category]),
                      const SizedBox(width: 8),
                      Text(expense.formattedDate)
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}