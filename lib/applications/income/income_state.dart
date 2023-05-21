part of 'income_bloc.dart';

@freezed
class IncomeState with _$IncomeState {
  const factory IncomeState({
    required bool isLoading,
    required List<TransactionModel> incomeList,
    required bool isError,
  }) = _IncomeState;
  factory IncomeState.initial() {
    return const IncomeState(isLoading: false, incomeList: [], isError: false);
  }
}
