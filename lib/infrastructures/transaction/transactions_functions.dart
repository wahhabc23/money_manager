import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/domain/transactions/transactions_services.dart';

const transactionsDbName = 'transactions-db';

@LazySingleton(as: TransactionsServices)
class TransactionsFunctions implements TransactionsServices {
  // add transaction to hive
  @override
  Future<void> addTransaction(TransactionModel transaction) async {
    final box = await Hive.openBox<TransactionModel>(transactionsDbName);
    // assign new var
    var newTransaction = transaction;
    // take key as id
    final id = await box.add(transaction);
    // store key to id
    newTransaction.id = id;
    // save transaction with id
    newTransaction.save();
  }

  // delete transaction from hive
  @override
  Future<void> deleteTransaction(int id) async {
    final box = await Hive.openBox<TransactionModel>(transactionsDbName);
    await box.delete(id);
  }

  // get transaction from hive
  @override
  Future<List<TransactionModel>> getTransactions() async {
    final box = await Hive.openBox<TransactionModel>(transactionsDbName);
    return box.values.toList();
  }

  // update transaction
  @override
  Future<void> updateTransaction(TransactionModel transaction) async {
    final box = await Hive.openBox<TransactionModel>(transactionsDbName);
    await box.put(transaction.id, transaction);
  }
}
