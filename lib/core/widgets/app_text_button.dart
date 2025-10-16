import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder_app/core/theming/styles.dart';

import '../helpers/spacing.dart';
import '../theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final Widget? icon;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    this.textStyle,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: Container(
        width: buttonWidth?.w ?? double.maxFinite,
        height: buttonHeight ?? 54.h,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 14.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          color: backgroundColor ?? ColorsManager.blueGreen,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha((255 * 0.25).round()),
              blurRadius: 4.r,
              offset: Offset(0, 4),
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...icon != null ? [icon!, horizontalSpace(12)] : [],
            Text(buttonText, style: textStyle ?? TextStyles.font18WhileMedium),
          ],
        ),
      ),
    );
  }
}
