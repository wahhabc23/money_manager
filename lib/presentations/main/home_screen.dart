import 'dart:io';

import 'package:flutter/material.dart';
import 'package:money_management/presentations/expense/expense_screen.dart';
import 'package:money_management/presentations/income/income_screen.dart';
import 'package:money_management/presentations/main/widgets/bottom_nav_widget.dart';
import 'package:money_management/presentations/main/widgets/drawer_widget.dart';
import 'package:money_management/presentations/transactions/widgets/transactions_form.dart';
import 'package:money_management/presentations/transactions/transactions_screen.dart';
import 'package:unicons/unicons.dart';

ValueNotifier<int> bottomNavigationsIndexNotifier = ValueNotifier(0);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [
      TransactionsScreen(),
      IncomeScreen(),
      ExpenseScreen(),
    ];
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: bottomNavigationsIndexNotifier,
        builder: (BuildContext context, int value, Widget? child) {
          return pages[value];
        },
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const TransactionsFormScreen()));
        },
        child: const Icon(UniconsLine.plus),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
