import 'package:flutter/material.dart';
import 'package:haatak/theme/app_colors.dart';

class BorderedGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  final Widget? icon;

  const BorderedGradientButton({
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
        decoration: BoxDecoration(
          // gradient: const LinearGradient(
          //   colors: [
          //     Color(0xFFD8AF54),
          //     Color(0xFFD8AF54),
          //     Color(0xFFD8AF54),
          //   ],
          // ),
          // color: Color(0xFFD8AF54),
          // borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: const EdgeInsets.all(2), // Border thickness
        child: Container(
          width: double.infinity,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFFFFEECC),
                Color(0xFFFFF9ED),
                Color(0xFFFFEECC),
              ],
            ),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: const Color(0xFFD8AF54), width: 1)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: textStyle ??
                    Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.textBlue,
                          fontWeight: FontWeight.w600,
                        ),
              ),
              if (icon != null) ...[
                const SizedBox(width: 8),
                icon!,
              ],
            ],
          ),
        )
      )
    );
  }
}