import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:money_management/applications/transactions/transactions_bloc.dart';
import 'package:money_management/core/miscs.dart';
import 'package:money_management/domain/enums.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/presentations/main/home_screen.dart';
import 'package:money_management/presentations/transactions/widgets/transactions_form.dart';
import 'package:unicons/unicons.dart';

class TransactionItemScreen extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionItemScreen({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat.yMMMEd().format(transaction.date);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => TransactionsFormScreen(
                        actionType: ActionType.edit,
                        transaction: transaction,
                      )));
            },
            icon: const Icon(UniconsLine.edit),
            tooltip: 'Edit',
          ),
          IconButton(
            onPressed: () {
              context.read<TransactionsBloc>().add(
                  TransactionsEvent.deleteTransaction(id: transaction.key));
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (ctx) => const HomeScreen()),
                  (route) => false);
            },
            icon: const Icon(UniconsLine.trash),
            tooltip: 'Delete',
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: screenSize.height * 0.5,
          width: screenSize.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 2, color: Colors.black38)),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Amount:'),
                    Text(
                      transaction.amount.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                sheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Category:'),
                    Text(
                      transaction.category.name.toString().toUpperCase(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                sheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Category type:'),
                    Text(
                      transaction.type.name.toString().toUpperCase(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                sheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Date:'),
                    Text(
                      formattedDate.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                sheight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Note:'),
                    Text(
                      transaction.note.toString(),
                      maxLines: 3,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
