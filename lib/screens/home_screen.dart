// lib/features/home/presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:haatak/screens/daily_savings_blog_screen.dart';
import 'package:haatak/screens/notifications_screen.dart';
import 'package:haatak/screens/refer_and_earn_screen.dart';
import 'package:haatak/screens/spin_the_wheel_screen.dart';
import 'package:haatak/screens/withdraw_9_screen.dart';
import 'package:haatak/widgets/border_gradient_button.dart';
import 'package:haatak/widgets/gradient_button.dart';
import '../theme/app_colors.dart';
// import './daily_savings_screen.dart';
// import '../widgets/custom_button.dart';
import '../widgets/themed_gradient_card.dart';
import '../widgets/automate_savings_card.dart';

// Mock data models (replace with your actual models)
class CategoryItem {
  final String label;
  final String image_path;
  CategoryItem({required this.label, required this.image_path});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // For bottom navigation bar

  // Mock data for "Buy Real Gold" section
  final List<CategoryItem> _goldCategories = [
    CategoryItem(label: "For Her", image_path: "assets/images/for_her_img.png"),
    CategoryItem(label: "For Him", image_path: "assets/images/for_him_img.png"),
    CategoryItem(
      label: "For Couple",
      image_path: "assets/images/for_couple_img.png",
    ),
    // CategoryItem(label: "For Him", icon: Icons.family_restroom), // Placeholder
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 90, // Enough height to include vertical padding
        title: Padding(
          padding: const EdgeInsets.fromLTRB(24, 42, 24, 20),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/gold-coin.png",
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 12),
              Center(
                child: Text(
                  'Hi Steve J.',
                  style: textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.textBlue,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle notification tap
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsScreen(),
                    ),
                  );
                },
                icon: Image.asset(
                  "assets/icons/notification_icon.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTotalInvestmentCard(context, textTheme),
            const SizedBox(height: 24),
            _buildLivePriceCard(context, textTheme),
            const SizedBox(height: 24),
            // _buildAutomateSavingsCard(context, textTheme),
            AutomateSavingsCard(),
            const SizedBox(height: 24),
            _buildSectionTitle(textTheme, "Buy Real Gold"),
            const SizedBox(height: 2),
            Text(
              "Buy Exclusive Jewellery and get 5% off",
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            _buildGoldCategoriesGrid(textTheme),
            const SizedBox(height: 24),
            _buildWinRewardsCard(context, textTheme),
            const SizedBox(height: 24),
            _buildReferFriendCard(context, textTheme),
            const SizedBox(height: 24),
            _buildBuyPhysicalGoldCard(context, textTheme),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            // Handle navigation or state change
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'My Wealth',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Trends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(TextTheme textTheme, String title) {
    return Text(
      title,
      style: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTotalInvestmentCard(BuildContext context, TextTheme textTheme) {
    return ThemedGradientCard(
      // Use the new reusable widget
      // padding: const EdgeInsets.all(20), // Default padding is 20, can override if needed
      // borderRadius: 16, // Default is 16, can override
      // boxShadows: [ ... ], // Can override default shadow if needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Investment',
                style: textTheme.bodyLarge?.copyWith(color: AppColors.textBlue),
              ),

              // Consider making icon color adapt if background is darker
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Text(
                '₹23,000.01',
                style: textTheme.displayMedium?.copyWith(
                  color: AppColors.textBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFF999999),
                      Color(0xFFFFFFFF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(
                  Icons.visibility_outlined,
                  color: AppColors.textBlue,
                  size: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            '(2.886 gm 24K 99.9% Digital Gold)',
            style: textTheme.bodySmall?.copyWith(
              color: AppColors.textBlue,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Returns',
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '+ ₹3,384.60',
                style: textTheme.bodyMedium?.copyWith(
                  color: AppColors.textGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: BorderedGradientButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Withdraw9Screen())
                    );
                  },
                  text: "Withdraw",
                  icon: Image.asset(
                    "assets/images/withdraw_icon.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GradientButton(
                  onPressed: () {},
                  text: "Buy Gold",
                  icon: Image.asset(
                    "assets/images/mdi_gold.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLivePriceCard(BuildContext context, TextTheme textTheme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.cardSecondary,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.cardBorder),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    // Live dot
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'LIVE PRICE',
                    style: textTheme.bodySmall?.copyWith(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                '₹9740.18/gm',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textBlue,
                  fontSize: 20,
                ),
              ),
              Text(
                '24k Digital Gold Current Buy Price',
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textBlue,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/images/gold_bars.png',
            height: 70,
            width: 80,
            fit: BoxFit.contain,
          ), // ADD THIS ASSET
        ],
      ),
    );
  }

  Widget _buildGoldCategoriesGrid(TextTheme textTheme) {
    return SizedBox(
      height: 122, // Adjust height as needed
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _goldCategories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final category = _goldCategories[index];
          return Column(
            children: [
              Container(
                width: 102,
                height: 110,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.cardWhite, AppColors.gradientEnd],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  // color: AppColors.primaryGold.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.cardBorder, width: 0.8),
                ),
                child: Column(
                  children: [
                    Image.asset(category.image_path, fit: BoxFit.cover),
                    const SizedBox(height: 8),
                    Text(
                      category.label,
                      style: textTheme.bodySmall?.copyWith(
                        color: AppColors.textBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildWinRewardsCard(BuildContext context, TextTheme textTheme) {
    return GestureDetector(
      onTap: () {
        // Handle tap action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SpinTheWheelScreen()),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Win Rewards",
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            "Get lucky and stand a chance to win Gold",
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 117,
                  decoration: BoxDecoration(
                    color: AppColors.cardSecondary,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColors.cardBorder, width: 1),
                  ),
                  margin: const EdgeInsets.only(left: 30, top: 6),
                  padding: const EdgeInsets.fromLTRB(110, 24, 40, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Spin the wheel for fortune",
                        style: textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.textBlue,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Stand a chance to win upto 1 gm of Extra Gold",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.textBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/rewards_wheel.png',
                  width: 128,
                  height: 128,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReferFriendCard(BuildContext context, TextTheme textTheme) {
    return GestureDetector(
      onTap: () {
        // Handle tap action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ReferAndEarnScreen()),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Refer A Friend",
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            "Refer a friend and get rewarded in Gold",
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.textBlue,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 117,
            padding: const EdgeInsets.only(left: 2, right: 16),
            decoration: BoxDecoration(
              color: AppColors.cardSecondary,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.cardBorder),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/gift_box.png",
                  width: 111,
                  height: 80,
                ), // ADD THESE ASSETS
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Refer a friend",
                        style: textTheme.headlineSmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Win upto 1 gm of Gold for every referral you make",
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBuyPhysicalGoldCard(BuildContext context, TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Buy Physical Gold",
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColors.textBlue,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "You can purchase Physical Gold",
          style: textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: AppColors.textBlue,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            // Handle tap action
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DailySavingsBlogScreen(),
              ),
            );
          },
          child: Container(
            height: 117,
            padding: const EdgeInsets.only(left: 2, right: 16),
            decoration: BoxDecoration(
              color: AppColors.cardSecondary,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.cardBorder),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/gold_coin_stack.png",
                  width: 111,
                  height: 80,
                ), // ADD THESE ASSETS
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "#Ad Buy Gold Jewellery",
                        style: textTheme.headlineSmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Buy Gold Jewellery from your favourite Jewellers",
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
