import 'package:money_management/domain/categories/model/categories_model.dart';

abstract class CategoriesServices {
  Future <List<CategoryModel>> getCategories();
  Future <void> addCategory(CategoryModel category);
  Future <void> deleteCategory(int id);
  Future <void> updateCategory(CategoryModel category);
}