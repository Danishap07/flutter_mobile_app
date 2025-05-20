import 'package:flutter/material.dart';
import 'package:haatak/theme/app_colors.dart';

class GradientOtpInput extends StatefulWidget {
  final int length;
  final ValueChanged<String>? onCompleted;
  
  const GradientOtpInput({
    super.key,
    this.length = 6,
    this.onCompleted,
  });

  @override
  State<GradientOtpInput> createState() => _GradientOtpInputState();
}

class _GradientOtpInputState extends State<GradientOtpInput> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;
  String _otp = '';

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      widget.length,
      (index) => TextEditingController(),
    );
    _focusNodes = List.generate(
      widget.length,
      (index) => FocusNode(),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1 && index < widget.length - 1) {
      // Move to next field when a digit is entered
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      // Move to previous field when backspace is pressed
      _focusNodes[index - 1].requestFocus();
    }

    // Update OTP string
    _otp = _controllers.map((c) => c.text).join();
    
    if (_otp.length == widget.length) {
      widget.onCompleted?.call(_otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        widget.length,
        (index) => _buildOtpBox(index),
      ),
    );
  }

  Widget _buildOtpBox(int index) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors. outlineGradientBorderColor1, 
            AppColors.outlineGradientBorderColor2,
            AppColors.outlineGradientBorderColor3,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            gradient: const LinearGradient(
              colors: [
                AppColors.outlineGradientColor1,
                AppColors.outlineGradientColor2,  
                AppColors.outlineGradientColor3,],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              decoration: const InputDecoration(
                counterText: '',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 13,
                ),
              ),
              onChanged: (value) => _onChanged(value, index),
            ),
          ),
        ),
      ),
    );
  }
}