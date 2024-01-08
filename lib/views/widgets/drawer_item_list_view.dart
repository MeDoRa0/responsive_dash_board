import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utlis/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int selectedIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', icon: Assets.imagesMyTransaction),
    const DrawerItemModel(title: 'Statistics', icon: Assets.imagesStatstics),
    const DrawerItemModel(
        title: 'Wallet Account', icon: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', icon: Assets.imagesMyInvesments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
        
        itemCount: items.length,
        
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(
                  () {
                    selectedIndex = index;
                  },
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: selectedIndex == index,
              ),
            ),
          );
        });
  }
}
