import 'package:money_management/domain/transactions/model/transactions_model.dart';

abstract class TransactionsServices {
  Future <List<TransactionModel>> getTransactions();
  Future <void> addTransaction(TransactionModel category);
  Future <void> deleteTransaction(int id);
  Future <void> updateTransaction(TransactionModel category);
}