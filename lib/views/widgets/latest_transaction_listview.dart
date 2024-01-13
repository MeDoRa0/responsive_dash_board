import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utlis/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        userName: 'Hossam Amin',
        userEmail: 'hossamamin@hotmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        userName: 'samar hosam',
        userEmail: 'samarhosam@hotmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        userName: 'azza aman',
        userEmail: 'azzaaman@hotmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    // this code if we have limited number of items
    // we use SingleChildScrollView to make the row scrollable
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              //trinInsicWidth  is used to calculate the bigger item width in its children to determine its width
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );

/* another code if there is many items 
    return SizedBox(
      height: 80,
      //we use LIstView.Builder because we have a lot if items but we  need to build only the items that will show on screen
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          //trinInsicWidth  is used to calculate the bigger item width in its children to determine its width
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfoModel: items[index],
            ),
          );
        },
      ),
    );
  }*/
  }
}
