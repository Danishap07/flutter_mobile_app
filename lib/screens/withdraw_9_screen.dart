import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haatak/screens/withdraw_10_screen.dart';
import 'package:haatak/widgets/dotted_line_separator.dart';
import 'package:haatak/widgets/gradient_button.dart';
import 'package:haatak/widgets/themed_gradient_card.dart';
import '../theme/app_colors.dart';

class Withdraw9Screen extends StatefulWidget {
  const Withdraw9Screen({super.key});

  @override
  State<Withdraw9Screen> createState() => _Withdraw9ScreenState();
}

class _Withdraw9ScreenState extends State<Withdraw9Screen> {
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
        Container(
          height: 36,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFFFF1D6).withValues(alpha: 0.6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/green_light.png',
                width: 12,
                height: 12,
              ),
              const SizedBox(width: 10),
              Text("Current Buy Price", style: textTheme.bodySmall),
              const SizedBox(width: 10),
              Text(
                "₹9846.76 / gm",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              const SizedBox(width: 10),
              Text(
                "+ 3% GST",
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        ThemedGradientCard(
          borderRadius: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/gold_coin_logo.png",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 11),
              Text(
                "Your investment",
                style: textTheme.headlineMedium?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.outlineGradientBorderColor1,
                AppColors.outlineGradientBorderColor2,
                AppColors.outlineGradientBorderColor3,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.5, vertical: 22),
            decoration: BoxDecoration(
              color: AppColors.cardWhite, // Background inside the border
              borderRadius: BorderRadius.circular(4),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Savings",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "₹11,500.10",
                      style: GoogleFonts.inter(
                        color: AppColors.textBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "(1.6250 gm)",
                      style: GoogleFonts.inter(
                        color: AppColors.textBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Available to withdraw",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "₹11,500.10",
                      style: GoogleFonts.inter(
                        color: AppColors.textBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "(1.6250 gm)",
                      style: GoogleFonts.inter(
                        color: AppColors.textBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 43),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Valid for",
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.av_timer_outlined,
                    size: 20,
                    color: AppColors.textBlue,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "04:57",
                    style: textTheme.bodyMedium?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                "Enter Amount",
                style: textTheme.bodyLarge?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "₹10,000",
                style: GoogleFonts.montserrat(
                  fontSize: 48,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: 118,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF1D6),
                  border: Border.all(color: Color(0xFFFFCB5C)),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "1.1483 gm",
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textBlue,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "You can withdraw only once in 24 hours",
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
            ],
          ),
        ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 262,
                child: Text(
                  "Breakdown of the Sale Amount – Display: (Gold Price × Weight) - Transaction Fees = Final Amount",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textBlue,
                  ),
                ),
              ),

              Text(
                "₹1,096",
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
              onPressed: () {
                Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Withdraw10Screen())
                    );
              },
              text: "Withdraw",
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
              
              Text(
                "2K ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textBlue,
                ),
              ),
              Text(
                "Pure Gold",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "|",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "No Hidden Charges",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
              
            ],
          ),
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
              Text(
                "100% Safe and Secured",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                "|",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(width: 4),
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
