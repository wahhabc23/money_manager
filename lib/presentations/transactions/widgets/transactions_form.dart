import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management/applications/category/category_bloc.dart';
import 'package:money_management/applications/transactions/transactions_bloc.dart';
import 'package:money_management/core/miscs.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/domain/enums.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/presentations/main/home_screen.dart';

CategoryModel? _categorySelected;
CategoryType _selectedCategoryType = CategoryType.income;
final TextEditingController _amountController = TextEditingController();
final TextEditingController _noteController = TextEditingController();

ValueNotifier<DateTime> _dateValueNotifier = ValueNotifier(DateTime.now());

class TransactionsFormScreen extends StatelessWidget {
  final ActionType actionType;
  final TransactionModel? transaction;
  const TransactionsFormScreen(
      {super.key, this.actionType = ActionType.add, this.transaction});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    });

    final screenSize = MediaQuery.of(context).size;
    if (actionType == ActionType.edit) {
      if (transaction == null) {
        Navigator.of(context).pop();
        log('Transaction is null');
      }
      _amountController.text = transaction!.amount.toString();
      _noteController.text = transaction!.note;
      _dateValueNotifier.value = transaction!.date;
      _categorySelected = transaction!.category;
      _selectedCategoryType = transaction!.type;
    }

    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: screenSize.height * 0.8,
            width: screenSize.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.black38)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sheight20,
                  // category name
                  TextFormField(
                    controller: _amountController,
                    style: const TextStyle(fontSize: 30),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 30,
                      ),
                      hintText: ' Amount',
                    ),
                  ),
                  sheight20,
                  TextFormField(
                    controller: _noteController,
                    maxLength: 256,
                    maxLines: 3,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: ' Note',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  sheight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Date: ',
                        style: TextStyle(fontSize: 16),
                      ),
                      ValueListenableBuilder(
                        valueListenable: _dateValueNotifier,
                        builder: (BuildContext context, DateTime value,
                            Widget? child) {
                          return TextButton.icon(
                            onPressed: () async {
                              final selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now()
                                    .subtract(const Duration(days: 30)),
                                lastDate: DateTime.now(),
                              );
                              if (selectedDate == null) {
                                return;
                              } else {
                                _dateValueNotifier.value = selectedDate;
                              }
                            },
                            icon: const Icon(Icons.calendar_today),
                            label: Text(
                                '${_dateValueNotifier.value.day}/${_dateValueNotifier.value.month}/${_dateValueNotifier.value.year}'),
                          );
                        },
                      ),
                    ],
                  ),
                  // category type

                  _TransactionsCategoryWidget(
                    actionType: actionType,
                  ),
                  sheight20,
                  ElevatedButton(
                      onPressed: () {
                        var note = _noteController.text;
                        final amount = double.tryParse(_amountController.text);
                        final date = _dateValueNotifier.value;
                        final type = _selectedCategoryType;
                        final category = _categorySelected;
                        if (amount == null || category == null) {
                          return;
                        } else if (note.isEmpty) {
                          note = 'No notes added.';
                        }
                        final newTransaction = TransactionModel(
                          note: note,
                          amount: amount,
                          date: date,
                          type: type,
                          category: category,
                        );
                        if (actionType == ActionType.add) {
                          context.read<TransactionsBloc>().add(
                              TransactionsEvent.addTransaction(
                                  transaction: newTransaction));
                        } else {
                          newTransaction.id = transaction!.id;
                          context.read<TransactionsBloc>().add(
                              TransactionsEvent.updateTransaction(
                                  transaction: newTransaction));
                        }
                        
                        _amountController.clear();
                        _noteController.clear();
                        _categorySelected=null;
                        _selectedCategoryType=CategoryType.income;
                        _dateValueNotifier.value=DateTime.now();
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (ctx) => const HomeScreen()),
                            (route) => false);
                      },
                      child:
                          Text(actionType == ActionType.add ? 'Add' : 'Update'))
                ],
              ),
            ),
          ),
        ));
  }
}

class _TransactionsCategoryWidget extends StatefulWidget {
  final ActionType actionType;
  const _TransactionsCategoryWidget({super.key, required this.actionType});

  @override
  State<_TransactionsCategoryWidget> createState() =>
      _TransactionsCategoryWidgetState();
}

class _TransactionsCategoryWidgetState
    extends State<_TransactionsCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Text('Income'),
                    Radio(
                        value: CategoryType.income,
                        groupValue: _selectedCategoryType,
                        onChanged: (value) {
                          if (value == null) {
                            return;
                          }
                          if (state.incomeList.isEmpty) {
                            const snackBar = SnackBar(
                              content: Text('Income category is empty'),
                              duration: Duration(seconds: 3),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }

                          setState(() {
                            _selectedCategoryType = value;
                            _categorySelected = null;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    const Text('Expense'),
                    Radio(
                        value: CategoryType.expense,
                        groupValue: _selectedCategoryType,
                        onChanged: (value) {
                          if (value == null) {
                            return;
                          }
                          if (state.expenseList.isEmpty) {
                            const snackBar = SnackBar(
                              content: Text('Expense category is empty'),
                              duration: Duration(seconds: 3),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                          setState(() {
                            _selectedCategoryType = value;
                            _categorySelected = null;
                          });
                        }),
                  ],
                ),
              ],
            ),

            // category
            DropdownButton(
              hint: const Text('Select Category'),
              value: _categorySelected,
              items: (_selectedCategoryType == CategoryType.income
                      ? state.incomeList
                      : state.expenseList)
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList(),
              onChanged: ((value) {
                if (value == null) {
                  return;
                }
                setState(() {
                  _categorySelected = value;
                });
              }),
            )
          ],
        );
      },
    );
  }
}


// class _CategoryDropDownWidget extends StatefulWidget {
//   const _CategoryDropDownWidget();

//   @override
//   State<_CategoryDropDownWidget> createState() =>
//       _CategoryDropDownWidgetState();
// }

// class _CategoryDropDownWidgetState extends State<_CategoryDropDownWidget> {
//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
//     });
//     return BlocBuilder<CategoryBloc, CategoryState>(
//       builder: (context, state) {
//         return 
//       },
//     );
//   }
// }
