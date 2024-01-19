import 'package:flutter/material.dart';
import 'package:my_finance/Types/t_category.dart';

class Types {
  static const List<String> category = [
    'Food',
    'Transportation',
    'Clothing',
    'Health',
  ];

  static List<Category> payCategory = [
    Category(Colors.red, 'Expense'),
    Category(Colors.green, 'Income'),
    Category(Colors.blue, 'Receivables'),
    Category(Colors.yellow, 'Payable'),
  ];
}
