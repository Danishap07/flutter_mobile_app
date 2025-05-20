import 'package:flutter/material.dart';
import 'package:haatak/theme/app_colors.dart';
import 'package:haatak/widgets/OTP_input_boxes.dart';
import 'package:haatak/widgets/gradient_button.dart';

class VerifyOTP extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  VerifyOTP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 0),
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(top: 53),
                  sliver: SliverAppBar(
                    expandedHeight: 136,
                    stretch: true,
                    automaticallyImplyLeading: false,
                    pinned: false,
                    floating: false,
                    snap: false,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      background: Image.asset(
                        'assets/images/login_1.png',
                        width: 175,
                        height: 136,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 40),
                            const Text(
                              'Verify using OTP',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textBlue,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textBlue,
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextFormField(
                              controller: _phoneController,
                              decoration: const InputDecoration(
                                label: Align(
                                  // Use Align widget for label
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Email or phone number',
                                    style: TextStyle(color: AppColors.textBlue),
                                  ),
                                ),
                                border: OutlineInputBorder(),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                                labelStyle: TextStyle(
                                  color: AppColors.textBlue,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 20,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Enter Verification code",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textBlue,
                              ),
                            ),
                            const SizedBox(height: 10),
                            GradientOtpInput(
                              length: 4,
                              onCompleted: (otp) {
                                print('Completed OTP: $otp');
                                // Add your verification logic here
                              },
                            ),
                            const SizedBox(height: 32),
                            Center(
                              child: Container(
                                height: 33,
                                width: 208,

                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE3F3E5),
                                  border: Border.all(color: Color(0xFF009C19)),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'Successfully OTP Verified',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textBlue,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            GradientButton(
                              onPressed: () {},
                              text: 'Let’s begin!',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // SliverToBoxAdapter(child: _buildDownloadButton(context)),
              ],
            ),
            Positioned(
              top: 12,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.textBlue,
                  size: 20,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/images/haatak_logo.png',
                  height: 73,
                  width: 169,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
