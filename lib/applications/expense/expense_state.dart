part of 'expense_bloc.dart';

@freezed
class ExpenseState with _$ExpenseState {
  const factory ExpenseState({
    required bool isLoading,
    required List<TransactionModel> expenseList,
    required bool isError,
  }) = _ExpenseState;
  factory ExpenseState.initial() {
    return const ExpenseState(
      isLoading: false,
      expenseList: [],
      isError: false,
    );
  }
}
