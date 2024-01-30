import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/utlis/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expensses_item.dart';

class AllExpenssesItemsListView extends StatefulWidget {
  const AllExpenssesItemsListView({super.key});

  @override
  State<AllExpenssesItemsListView> createState() =>
      _AllExpenssesItemsListViewState();
}

class _AllExpenssesItemsListViewState extends State<AllExpenssesItemsListView> {
  final items = [
    const AllExpenssesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2023',
        price: '\$20,159'),
    const AllExpenssesItemModel(
        image: Assets.imagesMoneys,
        title: 'Income',
        date: 'April 2023',
        price: '\$22,147'),
    const AllExpenssesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2023',
        price: '\$20,586'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpenssesItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpenssesItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpenssesItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );
    return Row(
      //this code is to build all expenses items and  put padding on middle widget in all expenses item
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: AllExpenssesItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    setState(
      () {
        selectedIndex = index;
      },
    );
  }
}
