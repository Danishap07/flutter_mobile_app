// lib/app/config/app_theme.dart
import 'package:flutter/material.dart';
import './app_colors.dart'; // Adjust import path if needed
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primaryGold,
      scaffoldBackgroundColor: AppColors.screenBackground,
      fontFamily: 'Poppins', //  ADD YOUR FONT TO pubspec.yaml and assets/fonts
      

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.screenBackground, // Usually light for these screens
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.textBlue, size: 28),
        titleTextStyle: GoogleFonts.montserrat(
          color: AppColors.textBlue,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),

      textTheme: TextTheme(
        // Large Titles (e.g., ₹23,000.01, ₹2990)
        displayLarge: GoogleFonts.poppins(fontSize: 34.0, fontWeight: FontWeight.bold, color: AppColors.textBlue),
        displayMedium: GoogleFonts.poppins(fontSize: 28.0, fontWeight: FontWeight.bold, color: AppColors.textBlue),
        displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColors.textBlue),

        // Headings (e.g., "Total Investment", "Automate Your Savings")
        headlineMedium: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: AppColors.textBlue), // Semi-bold
        headlineSmall: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.textBlue),

        // Body Text (e.g., descriptions, sub-info)
        bodyLarge: GoogleFonts.poppins(fontSize: 16.0, color: AppColors.textBlue, fontWeight: FontWeight.normal),
        bodyMedium: GoogleFonts.poppins(fontSize: 14.0, color: AppColors.textBlue, fontWeight: FontWeight.w400),
        bodySmall: GoogleFonts.poppins(fontSize: 12.0, color: AppColors.textBlue, fontWeight: FontWeight.w500),

        // Labels (e.g., button text, input labels)
        labelLarge: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.textBlue), // For primary buttons
        labelMedium: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.textBlue),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGold,
          foregroundColor: AppColors.textBlue, // Text color on gold button
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16), // Taller buttons
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'YourAppFont',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), // More rounded
          ),
          elevation: 2,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primaryDarkGold,
          side: const BorderSide(color: AppColors.primaryDarkGold, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600, // Semi-bold
            fontFamily: 'YourAppFont',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),

      cardTheme: CardTheme(
        elevation: 0, // We'll use custom shadows or BoxDecoration for cards
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // More rounded cards
        ),
        color: AppColors.cardWhite,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cardWhite,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColors.lightGreyBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColors.lightGreyBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColors.primaryGold, width: 1.5),
        ),
        labelStyle: const TextStyle(color: AppColors.textBlue, fontFamily: 'YourAppFont'),
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bottomNavBackground,
        selectedItemColor: AppColors.bottomNavSelected,
        unselectedItemColor: AppColors.bottomNavUnselected,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, fontFamily: 'YourAppFont'),
        unselectedLabelStyle: TextStyle(fontSize: 10, fontFamily: 'YourAppFont'),
        type: BottomNavigationBarType.fixed,
        elevation: 8.0,
      ),

      iconTheme: const IconThemeData(
        color: AppColors.iconGrey,
        size: 24.0,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: AppColors.amountChipBackground,
        disabledColor: Colors.grey.shade300,
        selectedColor: AppColors.amountChipSelectedBackground,
        secondarySelectedColor: AppColors.amountChipSelectedBackground,
        labelStyle: TextStyle(color: AppColors.textBlue, fontWeight: FontWeight.w500),
        secondaryLabelStyle: TextStyle(color: AppColors.amountChipSelectedText, fontWeight: FontWeight.w500, fontFamily: 'YourAppFont'),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        selectedShadowColor: Colors.black26,
        elevation: 0, // Flat look
      ),

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryGold,
        brightness: Brightness.light,
        primary: AppColors.primaryGold,
        secondary: AppColors.orangeAccent,
        error: Colors.red.shade700,
        background: AppColors.screenBackground,
      ).copyWith(surface: AppColors.screenBackground),
    );
  }
}