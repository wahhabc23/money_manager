import 'package:hive_flutter/hive_flutter.dart';

part 'categories_model.g.dart';

@HiveType(typeId: 0)
enum CategoryType {
  @HiveField(0)
  income,

  @HiveField(1)
  expense,
}

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final bool isDeleted;

  @HiveField(3)
  final CategoryType type;

  CategoryModel({
    required this.name,
    this.isDeleted = false,
    required this.type,
  });

  @override
  String toString() {
    return '$id, $name, $type';
  }
}
