import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:money_management/domain/categories/categories_services.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoriesServices _categoriesServices;
  CategoryBloc(this._categoriesServices) : super(CategoryState.initial()) {
    on<_GetCategories>((event, emit) async {
      // emit initial
      emit(state.copyWith(isLoading: true, isError: false));
      // get data from db
      final List<CategoryModel> result =
          await _categoriesServices.getCategories();
      if (result.isEmpty) {
        return;
      }
      log(result.toString());
      // init income and expense list
      final List<CategoryModel> incomeList = [];
      final List<CategoryModel> expenseList = [];
      // loop items in result
      for (var item in result) {
        //
        if (item.isDeleted) {
          continue;
        }

        item.type == CategoryType.income
            // income > incomelist
            ? incomeList.add(item)
            // expense > expenselist
            : expenseList.add(item);
      }
      // emit new state with result
      emit(CategoryState(
          isLoading: false,
          incomeList: incomeList,
          expenseList: expenseList,
          isError: false));
    });
    on<_AddCategory>((event, emit) async {
      // add to db
      await _categoriesServices.addCategory(event.category);
    });
    on<_UpdateCategory>((event, emit) async {
      // update category
      await _categoriesServices.updateCategory(event.category);
    });
    on<_DeleteCategory>((event, emit) async {
      // delete category
      await _categoriesServices.deleteCategory(event.id);
    });
  }
}
