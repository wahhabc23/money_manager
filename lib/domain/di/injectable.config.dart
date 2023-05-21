// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:money_management/applications/category/category_bloc.dart'
    as _i5;
import 'package:money_management/applications/expense/expense_bloc.dart' as _i8;
import 'package:money_management/applications/income/income_bloc.dart' as _i9;
import 'package:money_management/applications/transactions/transactions_bloc.dart'
    as _i10;
import 'package:money_management/domain/categories/categories_services.dart'
    as _i3;
import 'package:money_management/domain/transactions/transactions_services.dart'
    as _i6;
import 'package:money_management/infrastructures/category/category_funhctions.dart'
    as _i4;
import 'package:money_management/infrastructures/transaction/transactions_functions.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CategoriesServices>(() => _i4.CategoryFunctions());
    gh.factory<_i5.CategoryBloc>(
        () => _i5.CategoryBloc(gh<_i3.CategoriesServices>()));
    gh.lazySingleton<_i6.TransactionsServices>(
        () => _i7.TransactionsFunctions());
    gh.factory<_i8.ExpenseBloc>(
        () => _i8.ExpenseBloc(gh<_i6.TransactionsServices>()));
    gh.factory<_i9.IncomeBloc>(
        () => _i9.IncomeBloc(gh<_i6.TransactionsServices>()));
    gh.factory<_i10.TransactionsBloc>(
        () => _i10.TransactionsBloc(gh<_i6.TransactionsServices>()));
    return this;
  }
}
