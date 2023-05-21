import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management/applications/category/category_bloc.dart';
import 'package:money_management/core/miscs.dart';
import 'package:money_management/domain/categories/model/categories_model.dart';
import 'package:money_management/domain/enums.dart';
import 'package:money_management/presentations/category/widgets/category_form.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Categories'),
          bottom: TabBar(
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              isScrollable: false,
              labelColor: Colors.blue,
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              tabs: const [
                Tab(
                  text: 'Income',
                ),
                Tab(
                  text: 'Expense',
                )
              ]),
        ),
        body: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            return TabBarView(
              children: [
                _TabBarWidget(list: state.incomeList),
                _TabBarWidget(list: state.expenseList),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CategoryFormScreen()));
          },
          label: const Text('Add Categories'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class _TabBarWidget extends StatelessWidget {
  final List<CategoryModel> list;
  const _TabBarWidget({
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(list.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black38)),
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                swidth20,
                Expanded(
                  child: Text(
                    list[index].name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => CategoryFormScreen(
                              actionType: ActionType.edit,
                              oldCategory: list[index],
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit),
                      tooltip: 'Edit',
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<CategoryBloc>().add(
                            CategoryEvent.deleteCategory(id: list[index].key));
                        context
                            .read<CategoryBloc>()
                            .add(const CategoryEvent.getCategories());
                      },
                      icon: const Icon(Icons.delete),
                      tooltip: 'Delete',
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
