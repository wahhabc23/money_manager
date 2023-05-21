// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management/applications/transactions/transactions_bloc.dart';
import 'package:money_management/core/miscs.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/presentations/transactions/widgets/transaction_item.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<TransactionsBloc>()
          .add(const TransactionsEvent.getTransactions());
    });
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Transactions'),
        ),
        body: BlocBuilder<TransactionsBloc, TransactionsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.transactionsList.isEmpty) {
              return const Center(
                child: Text('No transactions.'),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Error while loading data.'),
              );
            }
            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => TransactionItemScreen(
                                transaction: state.transactionsList[index],
                              )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: state.transactionsList[index].type ==
                                  CategoryType.income
                              ? Colors.green
                              : Colors.red,
                          border: Border.all(width: 1)),
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        children: [
                          swidth20,
                          Expanded(
                            child: Text(
                              state.transactionsList[index].category.name,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Text(
                            state.transactionsList[index].amount.toString(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white),
                          ),
                          swidth20
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: state.transactionsList.length,
            );
          },
        ));
  }
}
