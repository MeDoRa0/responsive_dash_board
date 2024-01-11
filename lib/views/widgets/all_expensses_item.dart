import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active&inactive_all_expenses_item.dart';

class AllExpenssesItem extends StatelessWidget {
  const AllExpenssesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpenssesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    //this code will check if the item in all expenses is selected or not
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
