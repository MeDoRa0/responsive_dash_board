import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active&inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  //we bring the drawer item model because we will use it here
  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
