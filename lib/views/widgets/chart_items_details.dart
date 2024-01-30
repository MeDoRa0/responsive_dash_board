import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_chart_detail_model.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemChartDetaliModel});
  final ItemChartDetaliModel itemChartDetaliModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemChartDetaliModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemChartDetaliModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemChartDetaliModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
