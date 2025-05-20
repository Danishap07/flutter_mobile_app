import 'package:flutter/material.dart';
import 'package:haatak/widgets/gradient_button.dart';
import '../theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({super.key});

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Refer & Earn',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.textBlue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/refer_earn_img.png",
              width: 345,
              height: 349,
            ),
            const SizedBox(height: 69),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Free Gold Upto 1 gm",
                    style: textTheme.displayMedium?.copyWith(
                      color: AppColors.textBlue,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text("on your friend’s first purchase",
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    "Extra Gold Upto 0.3 gm",
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Coupons for you & your friend",
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 70),
                  GradientButton(onPressed: () {}, text: "Invite Via WhatsApp", 
                    icon: Image.asset(
                      "assets/icons/whatsapp_icon.png",
                      width: 24,
                      height: 24,
                    ),
                    textStyle: textTheme.labelLarge?.copyWith(
                      color: AppColors.textBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text("Terms & Conditions apply*",
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textBlue,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            // _buildActionWidget(textTheme),
          ],
        ),
      ),
    );
  }
}
