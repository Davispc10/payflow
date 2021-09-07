import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  const SetLabelButtons({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 56,
      child: Row(
        children: [
          if (enablePrimaryColor) ...[
            LabelButton.primary(
              label: primaryLabel,
              onPressed: primaryOnPressed,
            ),
          ] else ...[
            LabelButton.heading(
              label: primaryLabel,
              onPressed: primaryOnPressed,
            ),
          ],
          DivideVerticalWidget(
            height: 56,
          ),
          if (enableSecondaryColor) ...[
            LabelButton.primary(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
            ),
          ] else ...[
            LabelButton.heading(
              label: secondaryLabel,
              onPressed: secondaryOnPressed,
            ),
          ],
        ],
      ),
    );
  }
}
