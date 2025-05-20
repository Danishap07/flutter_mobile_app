import 'package:flutter/material.dart';
import 'package:haatak/theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final List<Color> borderGradientColors;
  final List<Color> backgroundGradientColors;
  final double borderWidth;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.borderGradientColors = const [
      AppColors.outlineGradientBorderColor1,
      AppColors.outlineGradientBorderColor2, 
      AppColors.outlineGradientBorderColor3, 
      ],
    this.backgroundGradientColors = const [
      AppColors.outlineGradientColor1,
      AppColors.outlineGradientColor2,
      AppColors.outlineGradientColor3,
    ],
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: backgroundGradientColors),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Container(
        margin: EdgeInsets.all(borderWidth), // This creates space for the border
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          gradient: LinearGradient(colors: borderGradientColors),
        ),
        child: Padding(
          padding: EdgeInsets.all(borderWidth),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                label: Align(
                  alignment: Alignment.center,
                  child: Text(
                    labelText,
                    style: const TextStyle(color: AppColors.textBlue),
                  ),
                ),
                border: InputBorder.none, 
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.outlineGradientBorderColor1),
                  borderRadius: BorderRadius.circular(4)
                  ),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                labelStyle: const TextStyle(color: AppColors.textBlue),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 20,
                ),
                filled: true,
                fillColor: Colors.transparent,
              ),
              textAlign: TextAlign.center,
              keyboardType: keyboardType,
              obscureText: obscureText,
              validator: validator,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}