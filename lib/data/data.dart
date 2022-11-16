import 'dart:math';
import 'package:expense_manager/models/cost_model.dart';
import 'package:expense_manager/models/type_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

_generateExpenses() {
  List<CostModel> costModel = [
    CostModel(name: 'Item 0', cost: rand.nextDouble() * 90),
    CostModel(name: 'Item 1', cost: rand.nextDouble() * 90),
    CostModel(name: 'Item 2', cost: rand.nextDouble() * 90),
    CostModel(name: 'Item 3', cost: rand.nextDouble() * 90),
    CostModel(name: 'Item 4', cost: rand.nextDouble() * 90),
    CostModel(name: 'Item 5', cost: rand.nextDouble() * 90),
  ];
  return costModel;
}

List<TypeModel> typeNames = [
  TypeModel(name: 'House', maxAmount: 2000, expenses: _generateExpenses()),
  TypeModel(name: 'Clothing', maxAmount: 200, expenses: _generateExpenses()),
  TypeModel(name: 'Food', maxAmount: 400, expenses: _generateExpenses()),
  TypeModel(name: 'Utilities', maxAmount: 200, expenses: _generateExpenses()),
  TypeModel(
      name: 'Entertainment', maxAmount: 100, expenses: _generateExpenses()),
  TypeModel(name: 'Transport', maxAmount: 100, expenses: _generateExpenses()),
];
