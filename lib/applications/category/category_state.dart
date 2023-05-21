part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required bool isLoading,
    required List<CategoryModel> incomeList,
    required List<CategoryModel> expenseList,
    required bool isError,
  }) = _CategoryState;

  factory CategoryState.initial() {
    return const CategoryState(
        isLoading: false, incomeList: [], expenseList: [], isError: false);
  }
}
