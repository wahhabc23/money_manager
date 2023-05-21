
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:money_management/presentations/category/category_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Money Manager',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Center(child: Text('Categories')),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => const CategoryScreen()));
            },
          ),ListTile(
            title: const Center(child: Text('Exit')),
            onTap: () {
              exit(0);
            },
          )
        ],
      ),
    );
  }
}
