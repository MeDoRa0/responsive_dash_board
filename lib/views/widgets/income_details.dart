import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_chart_detail_model.dart';
import 'package:responsive_dash_board/views/widgets/chart_items_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemChartDetaliModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208BC7),
    ),
    ItemChartDetaliModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xFF4DB7F2),
    ),
    ItemChartDetaliModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xFF064060),
    ),
    ItemChartDetaliModel(
      title: 'Other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (e) => ItemDetails(itemChartDetaliModel: e),
          )
          .toList(),
    );
  }
}
