// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management/applications/income/income_bloc.dart';
import 'package:money_management/core/miscs.dart';
import 'package:money_management/presentations/transactions/widgets/transaction_item.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<IncomeBloc>().add(const IncomeEvent.started());
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Income'),
      ),
      body: BlocBuilder<IncomeBloc, IncomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.incomeList.isEmpty) {
            return const Center(
              child: Text('No income transaction.'),
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
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => TransactionItemScreen(transaction: state.incomeList[index],)));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(width: 1)),
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        swidth20,
                        Expanded(
                          child: Text(
                            state.incomeList[index].category.name,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        Text(
                          state.incomeList[index].amount.toString(),
                          style: const TextStyle(fontSize: 30),
                        ),
                        swidth20
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: state.incomeList.length,
          );
        },
      ),
    );
  }
}
