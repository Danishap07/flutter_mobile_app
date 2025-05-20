import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SpinTheWheelScreen extends StatefulWidget {
  const SpinTheWheelScreen({super.key});

  @override
  State<SpinTheWheelScreen> createState() => _SpinTheWheelScreenState();
}

class _SpinTheWheelScreenState extends State<SpinTheWheelScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.spinTheWheelBackground,
      appBar: AppBar(
        backgroundColor: AppColors.spinTheWheelBackground,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 24,
            color: AppColors.cardBorder,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Spin The Wheel',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.cardBorder,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 500,
          height: 500,
          // color: const Color(0x99FFEFC8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
            gradient: const RadialGradient(
              colors: [
                AppColors.spinTheWheelBackground,
                Color.fromARGB(150, 239, 200, 153),
                AppColors.spinTheWheelBackground,
              ],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Image.asset('assets/images/rewards_wheel.png',
            ),
        ),
      ),
    );
  }
}
