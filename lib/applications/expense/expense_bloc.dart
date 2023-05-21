import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/domain/transactions/transactions_services.dart';

part 'expense_event.dart';
part 'expense_state.dart';
part 'expense_bloc.freezed.dart';

@injectable
class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final TransactionsServices _transactionsServices;
  ExpenseBloc(this._transactionsServices) : super(ExpenseState.initial()) {
    on<_Started>((event, emit) async {
      // emit initial
      emit(ExpenseState.initial());
      // get data from db
      final List<TransactionModel> result = await _transactionsServices.getTransactions();
      // init expense list
      final List<TransactionModel> expenseList = [];
      // add data with income category to expenseList
      for (var element in result) {
        if (element.type == CategoryType.expense) {
          expenseList.add(element);
        }
      }
      // emit new state with result
      emit(ExpenseState(
          isLoading: false, expenseList: expenseList, isError: false));
    });
  }
}
