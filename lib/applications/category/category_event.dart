part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategories() = _GetCategories;
  const factory CategoryEvent.addCategory({
    required CategoryModel category,
  }) = _AddCategory;
  const factory CategoryEvent.deleteCategory({required int id}) =
      _DeleteCategory;
  const factory CategoryEvent.updateCategory({
    required CategoryModel category,
  }) = _UpdateCategory;
}
