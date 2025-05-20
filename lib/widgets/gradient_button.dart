import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final Widget? icon;

  const GradientButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 48,
    this.borderRadius = 12,
    this.textStyle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.themedGradientColor1,
              AppColors.themedGradientColor2,
              AppColors.themedGradientColor3,
            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.white, width: 1),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style:
                  textStyle ??
                  Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textBlue,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            if (icon != null) ...[const SizedBox(width: 8), icon!],
          ],
        ),
      ),
    );
  }
}
