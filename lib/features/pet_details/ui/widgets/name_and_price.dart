import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class NameAndPrice extends StatelessWidget {
  final String name;
  const NameAndPrice({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyles.font28BlackBold),
            Row(
              children: [
                SvgPicture.asset("assets/svgs/location_icon.svg"),
                HorizontalSpace(6),
                Text("2.7 km away", style: TextStyles.font18GreyRegular),
              ],
            ),
          ],
        ),
        Text(
          "\$95",
          style: TextStyles.font14BlueGreenSemiBold.copyWith(fontSize: 26.sp),
        ),
      ],
    );
  }
}
