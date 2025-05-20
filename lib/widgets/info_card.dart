// lib/shared/widgets/info_card.dart
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  final double borderRadius;
  final List<BoxShadow>? boxShadow;

  const InfoCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.borderRadius = 12.0,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0, // Use custom shadow or theme's card elevation
      margin: margin ?? theme.cardTheme.margin ?? const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      color: backgroundColor ?? theme.cardTheme.color ?? Colors.white,
      child: Container(
        padding: padding ?? const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor ?? theme.cardTheme.color ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow ?? (theme.cardTheme.elevation == 0 || theme.cardTheme.elevation == null // Add a default subtle shadow if card elevation is not set
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  )
                ]
              : null),
        ),
        child: child,
      ),
    );
  }
}