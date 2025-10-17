import 'package:flutter/material.dart';
import 'package:pets_finder_app/core/theming/styles.dart';

import '../../../../core/helpers/spacing.dart';

class PetDescription extends StatelessWidget {
  final String text;
  const PetDescription({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About:", style: TextStyles.font16BlackSemiBold),
        VerticalSpace(7),
        Text(text, style: TextStyles.font16GreyRegular),
      ],
    );
  }
}
