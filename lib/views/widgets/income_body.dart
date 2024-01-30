import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utlis/size_config.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    //if the width of screen greater than 1240 and less than 1537
    return width >= SizeConfig.desktop && width < 1540
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: IncomeChart(),
                ),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
