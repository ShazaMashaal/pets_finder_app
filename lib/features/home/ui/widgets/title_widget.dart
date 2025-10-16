import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class TitleWidget extends StatelessWidget {
  final Widget? icon;
  final String title;
  const TitleWidget({super.key, this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.font24BlackBold),
        icon ?? SizedBox.shrink(),
      ],
    );
  }
}
