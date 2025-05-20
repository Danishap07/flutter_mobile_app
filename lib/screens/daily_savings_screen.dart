import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:haatak/screens/payment_screen.dart';
import 'package:haatak/widgets/gradient_button.dart';
import '../theme/app_colors.dart';
import '../widgets/amount_chip.dart';

class DailySavingsScreen extends StatefulWidget {
  const DailySavingsScreen({super.key});

  @override
  State<DailySavingsScreen> createState() => _DailySavingsScreenState();
}

class _DailySavingsScreenState extends State<DailySavingsScreen> {
  String _selectedAmount = '50'; // Default selected amount

  final List<String> _amounts = ['10', '20', '30', '50'];

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
            _buildProjectedReturnsCard(textTheme),
            const SizedBox(height: 30),
            _buildAmountSelectionTitle(textTheme),
            const SizedBox(height: 20),
            _buildAmountChips(textTheme),
            const Spacer(), // Pushes content below to the bottom
            _buildSafeAndSecureInfo(textTheme),
            const SizedBox(height: 20),
            GradientButton(
              text: 'Select Payment Method',
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
            const SizedBox(height: 16),
            _buildTermsAndPoweredBy(textTheme, context),
            const SizedBox(height: 10), // Bottom padding
          ],
        ),
      ),
    );
  }

  Widget _buildProjectedReturnsCard(TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: AppColors.themedCardGradient,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projected 5 years returns',
            style: textTheme.bodyLarge?.copyWith(
              color: AppColors.textBlue,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Text(
            'With 15% returns p.a.',
            style: textTheme.bodyMedium?.copyWith(
              color: AppColors.textGreen,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              '₹2990',
              style: textTheme.displayLarge?.copyWith(
                color: AppColors.textBlue,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              '(as 10.54 gm)',
              style: textTheme.bodyMedium?.copyWith(color: AppColors.textBlue),
            ),
          ),
          const SizedBox(height: 16),
          const Divider(color: AppColors.primaryGold, thickness: 0.5),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Investment: ₹2600',
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.textBlue,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Earning:',
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    '₹390',
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.textGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAmountSelectionTitle(TextTheme textTheme) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 48,
        padding: const EdgeInsets.all(1), // Border thickness
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
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.outlineGradientColor1,
                AppColors.outlineGradientColor2,
                AppColors.outlineGradientColor3,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Centered text
              Center(
                child: Text(
                  '₹$_selectedAmount',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // Right-aligned text
              Positioned(
                right: 8,
                child: Text(
                  "/Daily",
                  style: textTheme.bodyMedium?.copyWith(
                    color: AppColors.textBlue,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAmountChips(TextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          _amounts.map((amount) {
            return AmountChip(
              amount: amount,
              isSelected: _selectedAmount == amount,
              onTap: () {
                setState(() {
                  _selectedAmount = amount;
                });
              },
              popularText: amount == '50' ? 'Popular' : null,
            );
          }).toList(),
    );
  }

  Widget _buildSafeAndSecureInfo(TextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/shield_done.png',
          color: AppColors.textBlue,
          width: 18,
          height: 18,
        ),
        const SizedBox(width: 8),
        Text(
          '100% Safe and Secure | 24K Pure Gold',
          style: textTheme.bodyMedium?.copyWith(
            color: AppColors.textBlue,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildTermsAndPoweredBy(TextTheme textTheme, BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: textTheme.bodySmall?.copyWith(color: AppColors.textBlue),
        children: [
          const TextSpan(text: 'By continuing, I agree to the '),
          TextSpan(
            text: 'Terms & Conditions',
            style: const TextStyle(
              color: AppColors.textBlue, // Or your link color
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w500,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle T&C tap
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("T&C Tapped!")),
                    );
                  },
          ),
          const TextSpan(
            text: '\nPowered by ',
            style: TextStyle(color: AppColors.textBlue),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 4,
              ), // spacing between logo and text
              child: Image.asset(
                'assets/icons/safegold.png', // replace with your logo asset path
                height: 14,
              ),
            ),
          ),
          TextSpan(
            text: 'SAFEGOLD',
            style: const TextStyle(
              color: Color(0xFFDF8A16),
              fontWeight: FontWeight.bold,
            ),
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Safegold Tapped!")),
                    );
                  },
          ),
        ],
      ),
    );
  }
}
