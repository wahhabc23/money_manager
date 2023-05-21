// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel category) updateCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(CategoryModel category)? addCategory,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(CategoryModel category)? updateCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel category)? updateCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCategoriesCopyWith<$Res> {
  factory _$$_GetCategoriesCopyWith(
          _$_GetCategories value, $Res Function(_$_GetCategories) then) =
      __$$_GetCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCategoriesCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_GetCategories>
    implements _$$_GetCategoriesCopyWith<$Res> {
  __$$_GetCategoriesCopyWithImpl(
      _$_GetCategories _value, $Res Function(_$_GetCategories) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCategories implements _GetCategories {
  const _$_GetCategories();

  @override
  String toString() {
    return 'CategoryEvent.getCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel category) updateCategory,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(CategoryModel category)? addCategory,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(CategoryModel category)? updateCategory,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel category)? updateCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategories implements CategoryEvent {
  const factory _GetCategories() = _$_GetCategories;
}

/// @nodoc
abstract class _$$_AddCategoryCopyWith<$Res> {
  factory _$$_AddCategoryCopyWith(
          _$_AddCategory value, $Res Function(_$_AddCategory) then) =
      __$$_AddCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});
}

/// @nodoc
class __$$_AddCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_AddCategory>
    implements _$$_AddCategoryCopyWith<$Res> {
  __$$_AddCategoryCopyWithImpl(
      _$_AddCategory _value, $Res Function(_$_AddCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_AddCategory(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$_AddCategory implements _AddCategory {
  const _$_AddCategory({required this.category});

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCategoryCopyWith<_$_AddCategory> get copyWith =>
      __$$_AddCategoryCopyWithImpl<_$_AddCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel category) updateCategory,
  }) {
    return addCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(CategoryModel category)? addCategory,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(CategoryModel category)? updateCategory,
  }) {
    return addCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel category)? updateCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements CategoryEvent {
  const factory _AddCategory({required final CategoryModel category}) =
      _$_AddCategory;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$_AddCategoryCopyWith<_$_AddCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCategoryCopyWith<$Res> {
  factory _$$_DeleteCategoryCopyWith(
          _$_DeleteCategory value, $Res Function(_$_DeleteCategory) then) =
      __$$_DeleteCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_DeleteCategory>
    implements _$$_DeleteCategoryCopyWith<$Res> {
  __$$_DeleteCategoryCopyWithImpl(
      _$_DeleteCategory _value, $Res Function(_$_DeleteCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteCategory implements _DeleteCategory {
  const _$_DeleteCategory({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CategoryEvent.deleteCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCategory &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      __$$_DeleteCategoryCopyWithImpl<_$_DeleteCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel category) updateCategory,
  }) {
    return deleteCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(CategoryModel category)? addCategory,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(CategoryModel category)? updateCategory,
  }) {
    return deleteCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel category)? updateCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategory implements CategoryEvent {
  const factory _DeleteCategory({required final int id}) = _$_DeleteCategory;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteCategoryCopyWith<_$_DeleteCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCategoryCopyWith<$Res> {
  factory _$$_UpdateCategoryCopyWith(
          _$_UpdateCategory value, $Res Function(_$_UpdateCategory) then) =
      __$$_UpdateCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});
}

/// @nodoc
class __$$_UpdateCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_UpdateCategory>
    implements _$$_UpdateCategoryCopyWith<$Res> {
  __$$_UpdateCategoryCopyWithImpl(
      _$_UpdateCategory _value, $Res Function(_$_UpdateCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_UpdateCategory(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$_UpdateCategory implements _UpdateCategory {
  const _$_UpdateCategory({required this.category});

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CategoryEvent.updateCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCategory &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCategoryCopyWith<_$_UpdateCategory> get copyWith =>
      __$$_UpdateCategoryCopyWithImpl<_$_UpdateCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(CategoryModel category) addCategory,
    required TResult Function(int id) deleteCategory,
    required TResult Function(CategoryModel category) updateCategory,
  }) {
    return updateCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(CategoryModel category)? addCategory,
    TResult? Function(int id)? deleteCategory,
    TResult? Function(CategoryModel category)? updateCategory,
  }) {
    return updateCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(CategoryModel category)? addCategory,
    TResult Function(int id)? deleteCategory,
    TResult Function(CategoryModel category)? updateCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_DeleteCategory value) deleteCategory,
    required TResult Function(_UpdateCategory value) updateCategory,
  }) {
    return updateCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_DeleteCategory value)? deleteCategory,
    TResult? Function(_UpdateCategory value)? updateCategory,
  }) {
    return updateCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_DeleteCategory value)? deleteCategory,
    TResult Function(_UpdateCategory value)? updateCategory,
    required TResult orElse(),
  }) {
    if (updateCategory != null) {
      return updateCategory(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategory implements CategoryEvent {
  const factory _UpdateCategory({required final CategoryModel category}) =
      _$_UpdateCategory;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$_UpdateCategoryCopyWith<_$_UpdateCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CategoryModel> get incomeList => throw _privateConstructorUsedError;
  List<CategoryModel> get expenseList => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<CategoryModel> incomeList,
      List<CategoryModel> expenseList,
      bool isError});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? incomeList = null,
    Object? expenseList = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      incomeList: null == incomeList
          ? _value.incomeList
          : incomeList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      expenseList: null == expenseList
          ? _value.expenseList
          : expenseList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_CategoryStateCopyWith(
          _$_CategoryState value, $Res Function(_$_CategoryState) then) =
      __$$_CategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<CategoryModel> incomeList,
      List<CategoryModel> expenseList,
      bool isError});
}

/// @nodoc
class __$$_CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_CategoryState>
    implements _$$_CategoryStateCopyWith<$Res> {
  __$$_CategoryStateCopyWithImpl(
      _$_CategoryState _value, $Res Function(_$_CategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? incomeList = null,
    Object? expenseList = null,
    Object? isError = null,
  }) {
    return _then(_$_CategoryState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      incomeList: null == incomeList
          ? _value._incomeList
          : incomeList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      expenseList: null == expenseList
          ? _value._expenseList
          : expenseList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {required this.isLoading,
      required final List<CategoryModel> incomeList,
      required final List<CategoryModel> expenseList,
      required this.isError})
      : _incomeList = incomeList,
        _expenseList = expenseList;

  @override
  final bool isLoading;
  final List<CategoryModel> _incomeList;
  @override
  List<CategoryModel> get incomeList {
    if (_incomeList is EqualUnmodifiableListView) return _incomeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeList);
  }

  final List<CategoryModel> _expenseList;
  @override
  List<CategoryModel> get expenseList {
    if (_expenseList is EqualUnmodifiableListView) return _expenseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseList);
  }

  @override
  final bool isError;

  @override
  String toString() {
    return 'CategoryState(isLoading: $isLoading, incomeList: $incomeList, expenseList: $expenseList, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._incomeList, _incomeList) &&
            const DeepCollectionEquality()
                .equals(other._expenseList, _expenseList) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_incomeList),
      const DeepCollectionEquality().hash(_expenseList),
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      __$$_CategoryStateCopyWithImpl<_$_CategoryState>(this, _$identity);
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {required final bool isLoading,
      required final List<CategoryModel> incomeList,
      required final List<CategoryModel> expenseList,
      required final bool isError}) = _$_CategoryState;

  @override
  bool get isLoading;
  @override
  List<CategoryModel> get incomeList;
  @override
  List<CategoryModel> get expenseList;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryStateCopyWith<_$_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
