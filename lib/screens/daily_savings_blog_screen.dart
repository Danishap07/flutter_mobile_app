import 'package:flutter/material.dart';
import 'package:haatak/widgets/gradient_button.dart';
import 'package:haatak/widgets/outline_gradient_button.dart';
import '../theme/app_colors.dart';

class DailySavingsBlogScreen extends StatelessWidget {
  const DailySavingsBlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 258,
                stretch: true,
                automaticallyImplyLeading: false,
                pinned: false,
                floating: false,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Image.asset(
                    'assets/images/savings_blog_img.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      _buildDateHeader(textTheme),
                      const SizedBox(height: 24),
                      _buildMainHeading(textTheme),
                      const SizedBox(height: 32),
                      _buildFeatureList(textTheme),
                      const SizedBox(height: 40),
                      _buildSignupSteps(textTheme),
                      const SizedBox(height: 40),
                      _buildQuoteSection(textTheme),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: _buildDownloadButton(context)),
            ],
          ),
          Positioned(
            top: mediaQuery.padding.top + 16,
            left: 16,
            child: Container(
              alignment: Alignment.center,
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF000000),
                    Color(0xFF8D8D8D),
                    Color(0xFF000000),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateHeader(TextTheme textTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlineGradientButton(
          onPressed: () {},
          text: 'Blog',
          height: 29,
          borderRadius: 4,
          textStyle: textTheme.bodyMedium?.copyWith(
            color: AppColors.textBlue,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'Mar 25, 2025',
          style: textTheme.bodyMedium?.copyWith(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildMainHeading(TextTheme textTheme) {
    return Text(
      'BOOKURGOLD: THE FUTURE OF DIGITAL GOLD SAVINGS IS HERE!',
      style: textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        color: AppColors.textBlue,
        height: 1.3,
      ),
    );
  }

  Widget _buildFeatureList(TextTheme textTheme) {
    return Column(
      children: [
        Text(
          'Gold savings made simple—start small, grow steadily, and secure your future with ease. In today’s fast-paced world, securing your future is more important than ever. But traditional gold buying can be expensive, inconvenient, and risky. That’s where BookurGold comes in—a secure, flexible, and smart way to invest in gold digitally, without any hassle.',
          style: textTheme.bodyMedium,
        ),
        const SizedBox(height: 30),
        _buildBulletPoint(
          'No Heavy Investments Needed – Start with as little as ₹100',
        ),
        const SizedBox(height: 6),
        _buildBulletPoint(
          '100% Secure & Verified – Your gold is backed by real assets',
        ),
        const SizedBox(height: 6),
        _buildBulletPoint('Earn Daily Rewards–Let your gold work for you!'),
        const SizedBox(height: 6),
        _buildBulletPoint('Zero Lock-In – Withdraw anytime, anywhere'),
        const SizedBox(height: 6),
        _buildBulletPoint(
          'Accessible Anytime – Buy, sell, and track your gold investment on your phone',
        ),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '• ',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.textBlue,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignupSteps(TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCheckStep('Sign Up in minutes with just your phone number'),
        const SizedBox(height: 20),
        _buildCheckStep(
          'Buy Gold digitally, stored securely with verified partners',
        ),
        const SizedBox(height: 20),
        _buildCheckStep(
          'Watch It Grow with daily interest and extra gold benefits',
        ),
        const SizedBox(height: 20),
        _buildCheckStep(
          'Withdraw Anytime—convert your digital gold into real gold or cash',
        ),
      ],
    );
  }

  Widget _buildCheckStep(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.check_box, color: Color(0xFF4BD14B), size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.textBlue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuoteSection(TextTheme textTheme) {
    return Center(
      child: Text(
        '"Your Future Starts Today! Why wait? Join  thousands of smart investors who are already growing their wealth with BookurGold." \nDownload the app now and take the first step toward secure,hassle-free, and rewarding gold investment!” ',
        style: textTheme.bodyMedium,
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _buildDownloadButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 140,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.cardWhite,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF00000029),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline_rounded,
                      color: AppColors.textBlue,
                      size: 24,
                    ),
                  ),
                  Text(
                    "720k+",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textBlue,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/share_icon.png",
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GradientButton(
                  onPressed: () {},
                  text: "Buy Gold",
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textBlue,
                  ),
                ),
              ),
            ],
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
