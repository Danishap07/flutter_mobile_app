// lib/app/constants/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Colors for the Themed Gradient Card
  static const Color themedGradientColor1 = Color(0xFFE7CB86);
  static const Color themedGradientColor2 = Color(0xFFFFF4DF);
  static const Color themedGradientColor3 = Color(0xFFE7CB86);

  // Colors for the Outline Gradient Button
  static const Color outlineGradientColor1 = Color(0xFFFFEECC);
  static const Color outlineGradientColor2 = Color(0xFFFFF9ED);
  static const Color outlineGradientColor3 = Color(0xFFFFEECC);
  
  // Colors for the Outline Gradient Button
  static const Color outlineGradientBorderColor1 = Color(0xFFE8A217);
  static const Color outlineGradientBorderColor2 = Color(0xFFFFEECC);
  static const Color outlineGradientBorderColor3 = Color(0xFFE8A217);

  // Colors for linear gradient backgrounds
  static const Color gradientStart = Color.fromARGB(0, 253, 249, 0); // Start color for gradients
  static const Color gradientEnd = Color(0xFFF9DF8B); // End color for gradients

  // Primary Golds & Yellows
  static const Color primaryGold = Color(0xFFE1A22B); // Prominent gold
  static const Color primaryDarkGold = Color(0xFFB08D57); // Darker gold for accents, text
  static const Color lightGold = Color(0xFFFADFAA); // Lighter shade for gradients/backgrounds
  static const Color screenBackground = Color(0xFFFCFBF8); // Very light, almost white-yellow
  static const Color cardYellowBackground = Color(0xFFFFF9E6); // Light yellow for some cards
  static const Color cardSecondary = Color(0xFFFFF1D6); // Light yellow for some cards
  static const Color cardBorder = Color(0xFFFFCB5C); // White background for cards
  static const Color spinTheWheelBackground = Color(0xFF4B0084); // White background for cards

  // Text Colors
  static const Color textBlue = Color(0xFF2E0A49); // Subdued text, icons
  static const Color textLight = Color(0xFFFFFFFF); // Text on dark backgrounds
  static const Color textGreen = Color(0xFF27AE60); // For positive returns
  static const Color textPurple = Color(0xFF5E2750); // Purple text seen on "with 15% returns"

  // Accent & UI Colors
  static const Color greenAccent = Color(0xFF27AE60); // Positive indicators
  static const Color orangeAccent = Color(0xFFF2994A); // Calls to action
  static const Color cardWhite = Color(0xFFFFFFFF); // White card background
  static const Color lightGreyBorder = Color(0xFFE0E0E0); // Borders for input, chips
  static const Color iconGrey = Color(0xFFBDBDBD); // Inactive icons

  // Specific to Daily Savings Screen
  static const Color projectedReturnCardBgStart = Color(0xFFF3E5AB); // Gradient start for projected card
  static const Color projectedReturnCardBgEnd = Color(0xFFE7D38D);   // Gradient end
  static const Color amountChipBackground = Color(0xFFF5F0E1); // Background for amount chips
  static const Color amountChipSelectedBackground = Color(0xFFE0B84C); // Selected amount chip
  static const Color amountChipSelectedText = Color(0xFFFFFFFF);
  static const Color popularTagBackground = Color(0xFFE9DFF0); // Lilac/purple for 'Popular' tag
  static const Color popularTagText = Color(0xFF946FB0);
  static const Color poweredBySafegold = Color(0xFFE5B300); // "SAFEGOLD" text color

  // Bottom Navigation
  static const Color bottomNavBackground = Color(0xFFFFFFFF);
  static const Color bottomNavSelected = Color(0xFFE0B84C); // Active tab
  static const Color bottomNavUnselected = Color(0xFF757575); // Inactive tab

  // Reusable Themed Card Gradient
  static LinearGradient themedCardGradient = const LinearGradient(
    colors: [
      themedGradientColor1,
      themedGradientColor2,
      themedGradientColor3,
    ],
    stops: [0.0, 0.5, 1.0], // Adjust stops for desired gradient spread
    begin: Alignment.topLeft,  // CHANGED: Start from the left
    end: Alignment.bottomRight, 
  );

  // Gradients
  static LinearGradient projectedCardGradient = LinearGradient(
    colors: [projectedReturnCardBgStart, projectedReturnCardBgEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient automateSavingsCardGradient = LinearGradient(
    colors: [Color(0xFFFDF4D8), Color(0xFFFCEECF)], // Example, adjust from Figma
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}