import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haatak/widgets/dotted_line_separator.dart';
import 'package:haatak/widgets/gradient_button.dart';
import 'package:haatak/widgets/themed_gradient_card.dart';
import '../theme/app_colors.dart';

class Withdraw10Screen extends StatefulWidget {
  const Withdraw10Screen({super.key});

  @override
  State<Withdraw10Screen> createState() => _Withdraw10ScreenState();
}

class _Withdraw10ScreenState extends State<Withdraw10Screen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 75, // Enough height to include vertical padding
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24),
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(width: 12),
            Text(
              'Sell 24k Digital gold',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.textBlue,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        // Main body is a Column
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_buildWithdrawalCard(textTheme)],
              ),
            ),
          ),
          _buildBottomButtonSection(context),
        ],
      ),
    );
  }

  Widget _buildWithdrawalCard(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
      ],
    );
  }

  Widget _buildBottomButtonSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 10),
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.cardWhite,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withValues(alpha: 0.18),
            spreadRadius: 3,
            blurRadius: 16,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Color(0xFF717171), width: 1),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Withdrawal amount:",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textBlue,
                  ),
                ),
                const SizedBox(width: 9,),
              Text(
                "₹10,000",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14,),
          DottedLineSeparator(),
          const SizedBox(height: 14,),
          Expanded(
            child: GradientButton(
              height: 60,
              onPressed: () {},
              text: "Continue",
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.textBlue,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset(
                "assets/icons/shield_done.png",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 2),
              Text("100% Safe and Secured", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textBlue)),
              const SizedBox(width: 4),
              Text("|", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textBlue)),
              const SizedBox(width: 4),
              Text("24K", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: AppColors.textBlue)),
              const SizedBox(width: 2),
              Text("Pure Gold", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.textBlue)),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
             
              Text(
                "Powered by",
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(width: 2),
              Text(
                "SAFEGOLD",
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textBlue,
                ),
              ),
            ],
          ),
        ],
      ),
      // ElevatedButton(
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: AppColors.primaryGold,
      //     padding: const EdgeInsets.symmetric(vertical: 18),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(12),
      //     ),
      //   ),
      //   onPressed: () {},
      //   child: const Text(
      //     'Download the app now',
      //     style: TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
