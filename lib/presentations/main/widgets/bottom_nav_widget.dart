
import 'package:flutter/material.dart';
import 'package:money_management/presentations/main/home_screen.dart';
import 'package:unicons/unicons.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNavigationsIndexNotifier,
      builder: (BuildContext context, int value, Widget? child) {
        return BottomNavigationBar(
          currentIndex: value,
          onTap: (value) {
            bottomNavigationsIndexNotifier.value = value;
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.money_stack), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.dollar_alt), label: 'Income'),
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.money_withdrawal), label: 'Expense'),
          ],
        );
      },
    );
  }
}
