// lib/shared/widgets/custom_button.dart
import 'package:flutter/material.dart';

enum ButtonType { elevated, outlined, text }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType buttonType;
  final Color? backgroundColor; // Override theme
  final Color? foregroundColor; // Override theme
  final Color? borderColor;     // For outlined button
  final Widget? icon;
  final double? width;
  final double? height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.buttonType = ButtonType.elevated,
    this.backgroundColor,
    this.foregroundColor,
    this.borderColor,
    this.icon,
    this.width,
    this.height = 48.0, // Default height
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveTextStyle = textStyle ?? theme.elevatedButtonTheme.style?.textStyle?.resolve({}) ?? const TextStyle();

    Widget buttonContent = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          icon!,
          const SizedBox(width: 8.0),
        ],
        Text(text, style: effectiveTextStyle.copyWith(color: foregroundColor)),
      ],
    );

    if (width != null || height != null) {
      buttonContent = SizedBox(
        width: width,
        height: height,
        child: Center(child: buttonContent),
      );
    }

    switch (buttonType) {
      case ButtonType.elevated:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? theme.elevatedButtonTheme.style?.backgroundColor?.resolve({}),
            foregroundColor: foregroundColor ?? theme.elevatedButtonTheme.style?.foregroundColor?.resolve({}),
            minimumSize: Size(width ?? 0, height ?? 48),
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: buttonContent,
        );
      case ButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: foregroundColor ?? theme.outlinedButtonTheme.style?.foregroundColor?.resolve({}),
            side: BorderSide(color: borderColor ?? theme.outlinedButtonTheme.style?.side?.resolve({})?.color ?? theme.primaryColor),
            minimumSize: Size(width ?? 0, height ?? 48),
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: buttonContent,
        );
      case ButtonType.text:
        return TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: foregroundColor ?? theme.textButtonTheme.style?.foregroundColor?.resolve({}),
            minimumSize: Size(width ?? 0, height ?? 48),
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: buttonContent,
        );
    }
  }
}