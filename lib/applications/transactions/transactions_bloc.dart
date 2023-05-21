import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/domain/transactions/transactions_services.dart';

part 'transactions_event.dart';
part 'transactions_state.dart';
part 'transactions_bloc.freezed.dart';

@injectable
class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final TransactionsServices _transactionsServices;
  TransactionsBloc(this._transactionsServices)
      : super(TransactionsState.initial()) {
    on<_GetTransactions>((event, emit) async {
      // emit initial
      emit(TransactionsState.initial());
      // get value from db
      final List<TransactionModel> result =
          await _transactionsServices.getTransactions();
      // emit new state with result
      emit(TransactionsState(
        isLoading: false,
        isError: false,
        transactionsList: result,
      ));
    });

    on<_AddTransaction>((event, emit) async {
      // add to db
      await _transactionsServices.addTransaction(event.transaction);
    });

    on<_UpdateTransaction>((event, emit) async {
      // update from db
      await _transactionsServices.updateTransaction(event.transaction);
    });

    on<_DeleteTransaction>((event, emit) async {
      // delete from db
      await _transactionsServices.deleteTransaction(event.id);
    });
  }
}
