import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class OutlineGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final Widget? icon;

  const OutlineGradientButton({
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
        height: height,
        padding: const EdgeInsets.all(1), // Border thickness
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.outlineGradientBorderColor1,
              AppColors.outlineGradientBorderColor2,
              AppColors.outlineGradientBorderColor3,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
            colors: [
              AppColors.outlineGradientColor1,
              AppColors.outlineGradientColor2,
              AppColors.outlineGradientColor3,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ), // Background inside the border
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: textStyle ??
                    Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textBlue,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
              ),
              if (icon != null) ...[const SizedBox(width: 8), icon!],
            ],
          ),
        ),
      ),
    );
  }
}