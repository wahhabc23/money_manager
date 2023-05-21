import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management/applications/category/category_bloc.dart';
import 'package:money_management/core/miscs.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/domain/enums.dart';

ValueNotifier<CategoryType> _selectedCategoryNotifier =
    ValueNotifier(CategoryType.income);

class CategoryFormScreen extends StatelessWidget {
  final ActionType actionType;
  final CategoryModel? oldCategory;
  CategoryFormScreen({
    super.key,
    this.actionType = ActionType.add,
    this.oldCategory,
  });

  final TextEditingController _categoryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    });
    final screenSize = MediaQuery.of(context).size;
    if (actionType == ActionType.edit) {
      if (oldCategory != null) {
        _categoryNameController.text = oldCategory!.name;
        _selectedCategoryNotifier.value = oldCategory!.type;
      }
    }
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: screenSize.height * 0.5,
            width: screenSize.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.black38)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  sheight20,
                  // category name
                  TextFormField(
                    controller: _categoryNameController,
                    maxLength: 20,

                    decoration: const InputDecoration(
                        hintText: 'Category Name', border: InputBorder.none),
                  ),
                  sheight20,
                  // category type
                  ValueListenableBuilder(
                    valueListenable: _selectedCategoryNotifier,
                    builder: (BuildContext context,
                        CategoryType selectedCategory, Widget? child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Text('Income'),
                              Radio(
                                  value: CategoryType.income,
                                  groupValue: selectedCategory,
                                  onChanged: (value) {
                                    if (value == null) {
                                      return;
                                    }
                                    _selectedCategoryNotifier.value = value;
                                  }),
                            ],
                          ),
                          Row(
                            children: [
                              const Text('Expense'),
                              Radio(
                                  value: CategoryType.expense,
                                  groupValue: selectedCategory,
                                  onChanged: (value) {
                                    if (value == null) {
                                      return;
                                    }
                                    _selectedCategoryNotifier.value = value;
                                  }),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  sheight20,
                  ElevatedButton(
                      onPressed: () {
                        final String categoryName =
                            _categoryNameController.text;
                        final CategoryType type =
                            _selectedCategoryNotifier.value;
                        if (categoryName.isEmpty) {
                          return;
                        }
                        final CategoryModel category =
                            CategoryModel(name: categoryName, type: type);
                        if (actionType == ActionType.add) {
                          context.read<CategoryBloc>().add(
                              CategoryEvent.addCategory(category: category));
                        } else {
                          category.id = oldCategory!.id;
                          context.read<CategoryBloc>().add(
                              CategoryEvent.updateCategory(category: category));
                        }
                        Navigator.of(context).pop();
                      },
                      child: Text(actionType == ActionType.add
                          ? 'Add'
                          : 'Update'))
                ],
              ),
            ),
          ),
        ));
  }
}
