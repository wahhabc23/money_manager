import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/domain/transactions/transactions_services.dart';

part 'income_event.dart';
part 'income_state.dart';
part 'income_bloc.freezed.dart';

@injectable
class IncomeBloc extends Bloc<IncomeEvent, IncomeState> {
  final TransactionsServices _transactionsServices;
  IncomeBloc(this._transactionsServices) : super(IncomeState.initial()) {
    on<_Started>((event, emit) async {
      // emit initial
      emit(IncomeState.initial());
      // get data from db
      final List<TransactionModel> result =
          await _transactionsServices.getTransactions();
      // init incomeList
      final List<TransactionModel> incomeList = [];
      // add data with income category to incomeList
      for (var element in result) {
        if (element.type == CategoryType.income) {
          incomeList.add(element);
        }
      }
      // emit new state with result
      emit(IncomeState(
          isLoading: false, incomeList: incomeList, isError: false));
    });
  }
}
