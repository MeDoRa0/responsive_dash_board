import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utlis/app_images.dart';
import 'package:responsive_dash_board/utlis/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    //to get the aspect ratio of widget = width ÷ height
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              //this to remove the defult padding of listtile
              contentPadding: const EdgeInsets.only(
                left: 16,
                right: 42,
              ),

              title: Text(
                'MisrCard',
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: const Text(
                'mohamed hossam',
                style: AppStyles.styleMedium20,
              ),

              trailing: SvgPicture.asset(Assets.imagesMyCard),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0123 4567 8910 1112',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white),
                  ),
                  Text(
                    '02/28 - 258',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
