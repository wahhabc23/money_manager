import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_management/domain/categories/categories_services.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:injectable/injectable.dart';

const categoryDbName = 'category-db';

@LazySingleton(as: CategoriesServices)
class CategoryFunctions implements CategoriesServices {

  // add category to hive
  @override
  Future<void> addCategory(CategoryModel category) async {
    final box = await Hive.openBox<CategoryModel>(categoryDbName);
    // assign new var
    var newCategory = category;
    // take key as id
    final id = await box.add(category);
    // store key to id
    newCategory.id=id;
    // save category
    newCategory.save();
    log(newCategory.toString());

  }


  // delete category from hive
  @override
  Future<void> deleteCategory(int id) async {
    final box = await Hive.openBox<CategoryModel>(categoryDbName);
    log('here');
    await box.delete(id);
    log('succes');
  }
  // get categories from hive
  @override
  Future<List<CategoryModel>> getCategories() async {
    final box = await Hive.openBox<CategoryModel>(categoryDbName);
    return box.values.toList();
  }

  // update category from hive
  @override
  Future<void> updateCategory(CategoryModel category) async {
    final box = await Hive.openBox<CategoryModel>(categoryDbName);
    if (category.id==null) {
      return;
    }
    await box.put(category.id, category);
  }
}
