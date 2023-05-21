part of 'transactions_bloc.dart';

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.getTransactions() = _GetTransactions;
  const factory TransactionsEvent.addTransaction({
    required TransactionModel transaction,
  }) = _AddTransaction;
  const factory TransactionsEvent.deleteTransaction({
    required int id,
  }) = _DeleteTransaction;
  const factory TransactionsEvent.updateTransaction({
    required TransactionModel transaction,
  }) = _UpdateTransaction;
}
