import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PetImage extends StatelessWidget {
  final String url;
  const PetImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 375.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.vertical(
              bottom: Radius.circular(40.r),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.vertical(
              bottom: Radius.circular(40.r),
            ),
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 20.h,
          left: 20.w,
          right: 20.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svgs/back_arrow_icon.svg"),
              SvgPicture.asset("assets/svgs/fill_heart_icon.svg"),
            ],
          ),
        ),
      ],
    );
  }
}
