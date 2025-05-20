import 'package:flutter/material.dart';
import 'package:haatak/widgets/gradient_button.dart';
import '../theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Daily Savings',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.textBlue,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/icons/notification_icon.png",
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Notification action
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSubscriptionCard(),
            const SizedBox(height: 25),
            _buildNextDueCard(),
            const SizedBox(height: 25),
            _buildActionWidget(textTheme),
          ],
        ),
      ),
    );
  }

  Widget _buildSubscriptionCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardSecondary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.cardBorder, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Subscription at',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'UNIBRIDG ASSETS AND VAULT PRIVATE LIMITED',
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            "SUBSCRIPTION PLAN",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Plan for +919876543210 - Daily",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "₹ 50.00 X 1 unit",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "₹ 50.00",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Biled for daily",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 22),
          Container(
            alignment: Alignment.topCenter, // Center horizontally at the top
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "For any queries, please contact UNIBRIDG ASSETS AND VAULT PRIVATE LIMITED",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.textBlue,
              ),
              textAlign:
                  TextAlign.center, // Center the text inside the Text widget
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNextDueCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.cardSecondary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.cardBorder, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "NEXT DUE ON",
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "-",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "RECURRING AMOUNT",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "₹ 10.00",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Biled for daily",
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionWidget(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/icons/bank_icon.png", width: 18, height: 18),
              const SizedBox(width: 4),
              Text(
                "IDFC First Bank",
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
           GradientButton(
              text: 'Start Subscription',
              onPressed: () {
                // Handle payment method selection
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
              textStyle: textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.textBlue,
              ), // Make button full width
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Powered by ",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textBlue,
                  ),
                ),
                Image.asset(
                  "assets/icons/razorpay.png",
                  width: 74,
                  height: 16,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
