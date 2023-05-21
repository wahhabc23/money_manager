import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_management/applications/category/category_bloc.dart';
import 'package:money_management/applications/expense/expense_bloc.dart';
import 'package:money_management/applications/income/income_bloc.dart';
import 'package:money_management/applications/transactions/transactions_bloc.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/domain/di/injectable.dart';
import 'package:money_management/domain/transactions/model/transactions_model.dart';
import 'package:money_management/presentations/main/home_screen.dart';

void main() async {
  // configure injectable
  await configureInjectable();
  // register hive
  await hiveRegister();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<CategoryBloc>()),
        BlocProvider(create: (context) => getIt<TransactionsBloc>()),
        BlocProvider(create: (context) => getIt<IncomeBloc>()),
        BlocProvider(create: (context) => getIt<ExpenseBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white70),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// Hive

Future<void> hiveRegister() async {
  // init hive
  await Hive.initFlutter();
  // check adapter registered, if not register it
  if (!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CategoryTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(CategoryModelAdapter().typeId)) {
    Hive.registerAdapter(CategoryModelAdapter());
  }
  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }
}
