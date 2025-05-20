// lib/shared/widgets/amount_chip.dart
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AmountChip extends StatelessWidget {
  final String amount;
  final bool isSelected;
  final VoidCallback onTap;
  final String? popularText; // e.g., "Popular"

  const AmountChip({
    super.key,
    required this.amount,
    required this.isSelected,
    required this.onTap,
    this.popularText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final chipTheme = theme.chipTheme;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              gradient: isSelected 
              ? AppColors.themedCardGradient 
              : const LinearGradient(
                colors: [
                  AppColors.outlineGradientColor1,
                  AppColors.outlineGradientColor2,
                  AppColors.outlineGradientColor3,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: isSelected
                  ? chipTheme.selectedColor
                  : chipTheme.backgroundColor,
              borderRadius: chipTheme.shape is RoundedRectangleBorder
                  ? (chipTheme.shape as RoundedRectangleBorder).borderRadius as BorderRadius?
                  : BorderRadius.circular(8.0),
              border: Border.all(
                color: isSelected ? AppColors.textLight : AppColors.cardBorder,
                width: 1.5,
              ),
            ),
            child: Text(
              '₹$amount',
              style: chipTheme.labelStyle?.copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textBlue),
            ),
          ),
          if (popularText != null)
            Positioned(
              bottom: -10,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.popularTagBackground,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    popularText!,
                    style: const TextStyle(
                      color: AppColors.popularTagText,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}