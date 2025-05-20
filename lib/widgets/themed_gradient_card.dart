// lib/shared/widgets/themed_gradient_card.dart
import 'package:flutter/material.dart';
import '../theme/app_colors.dart'; 

class ThemedGradientCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final List<BoxShadow>? boxShadows; // Allow custom shadows
  final VoidCallback? onTap;

  const ThemedGradientCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius = 16.0,
    this.boxShadows,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final defaultPadding = const EdgeInsets.all(20.0);
    final defaultBoxShadow = [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1), // Softer default shadow
        spreadRadius: 1,
        blurRadius: 8,
        offset: const Offset(0, 2),
      )
    ];

    Widget cardContent = Container(
      width: double.infinity, // Ensure it takes available width like a Card
      padding: padding ?? defaultPadding,
      decoration: BoxDecoration(
        gradient: AppColors.themedCardGradient, // Apply the reusable gradient
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: boxShadows ?? defaultBoxShadow,
      ),
      child: child,
    );

    if (onTap != null) {
      cardContent = GestureDetector(
        onTap: onTap,
        child: cardContent,
      );
    }

    return margin != null
        ? Padding(padding: margin!, child: cardContent)
        : cardContent;
  }
}