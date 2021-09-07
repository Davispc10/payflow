import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class DivideVerticalWidget extends StatelessWidget {
  final double height;

  const DivideVerticalWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: AppColors.stroke,
    );
  }
}
