import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/income_body.dart';
import 'package:responsive_dash_board/views/widgets/income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeBody()
        ],
      ),
    );
  }
}
