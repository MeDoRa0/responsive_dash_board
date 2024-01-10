import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/utlis/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expensses_item.dart';

class AllExpenssesItemsListView extends StatelessWidget {
  const AllExpenssesItemsListView({super.key});
  static const items = [
    AllExpenssesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2023',
        price: '\$20,159'),
    AllExpenssesItemModel(
        image: Assets.imagesMoneys,
        title: 'Income',
        date: 'April 2023',
        price: '\$22,147'),
    AllExpenssesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2023',
        price: '\$20,586'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
    
      //this code is to build all expenses items and  put padding on middle widget in all expenses item
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpenssesItem(itemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpenssesItem(itemModel: item));
        }
      }).toList(),
    );
  }
}
