import 'package:flutter/material.dart';
import 'package:haatak/screens/daily_savings_screen.dart';
import 'package:haatak/theme/app_colors.dart';
import 'package:haatak/widgets/gradient_button.dart';
import 'package:haatak/widgets/themed_gradient_card.dart';

class savingCardColors {
  static const goldGradient = LinearGradient(
    colors: [Color(0xFFFEE9AE), Color(0xFFF9C56D)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const primaryPurple = Color(0xFF61388F);
}

class AutomateSavingsCard extends StatefulWidget {
  const AutomateSavingsCard({super.key});

  @override
  State<AutomateSavingsCard> createState() => _AutomateSavingsCardState();
}

class _AutomateSavingsCardState extends State<AutomateSavingsCard> {
  int selectedTab = 0;

  final List<String> tabs = ['Daily', 'Weekly', 'Monthly'];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Automate Your Savings',
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.textBlue,
              ),
            ), // Adjust text color if needed
          ),
          const SizedBox(height: 8),
          ThemedGradientCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/calendar_image.png',
                      height: 43,
                      width: 45.26,
                    ),
                    Text(
                      'Save Daily to reach your small & big goals',
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: AppColors.textBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // TAB BAR
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    children: List.generate(tabs.length, (index) {
                      final isSelected = selectedTab == index;
                      return Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => selectedTab = index),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient:
                                  isSelected
                                      ? AppColors.themedCardGradient
                                      : null,
                              color: isSelected ? null : Colors.transparent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              tabs[index],
                              style: textTheme.labelLarge?.copyWith(
                                color: AppColors.textBlue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                const SizedBox(height: 20),

                // CONTENT
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: AppColors.textBlue,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'For Loved Ones',
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textBlue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Riya gifted her husband  \na gold ring by saving',
                            style: textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.textBlue,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 8),

                    // Right Image
                    Image.asset(
                      'assets/images/gold_heart.png',
                      width: 70,
                      height: 70,
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // DOTS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(tabs.length, (index) {
                    final isSelected = selectedTab == index;
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: isSelected ? 18 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color:
                            isSelected
                                ? AppColors.textBlue
                                : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),

                const SizedBox(height: 16),

                // CTA BUTTON
                GestureDetector(
                  onTap: () {
                    // Handle your navigation or logic here
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GradientButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => const DailySavingsScreen(),
                                ),
                              );
                            },
                            text: 'Start ${tabs[selectedTab]} Saving',
                            textStyle: textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.textBlue,
                            ),
                            // const SizedBox(width: 8),
                           icon: const Icon(
                              Icons.arrow_forward,
                              color: AppColors.textBlue,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
