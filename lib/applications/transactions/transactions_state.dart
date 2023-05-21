part of 'transactions_bloc.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    required bool isLoading,
    required bool isError,
    required List<TransactionModel> transactionsList,
  }) = _TransactionsState;
  factory TransactionsState.initial() {
    return const TransactionsState(
      isLoading: false,
      isError: false,
      transactionsList: [],
    );
  }
}
