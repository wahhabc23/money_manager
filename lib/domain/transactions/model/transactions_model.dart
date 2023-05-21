import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';

part 'transactions_model.g.dart';

@HiveType(typeId: 3)
class TransactionModel extends HiveObject {

  @HiveField(0)
  int? id;  
  @HiveField(1)
  final String note;
  @HiveField(2)
  final double amount;
  @HiveField(3)
  final DateTime date;
  @HiveField(4)
  final CategoryType type;
  @HiveField(5)
  final CategoryModel category;

  TransactionModel(
      
      {required this.note,
      required this.amount,
      required this.date,
      required this.type,
      required this.category});

  @override
  String toString() {
    return '$note $amount, $date, $type, $category';
  }
}
