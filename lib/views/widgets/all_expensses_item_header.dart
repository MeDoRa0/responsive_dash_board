import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpenssesItemHeader extends StatelessWidget {
  const AllExpenssesItemHeader({
    super.key,
    required this.image,
    this.iconBackground,
    this.iconColor,
  });
  final String image;
  final Color? iconBackground, iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: iconBackground ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  iconColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
            ),
          ),
        ),
        Icon(Icons.chevron_right_outlined,
            color: iconColor == null ? const Color(0xFF064061) : Colors.white),
      ],
    );
  }
}
