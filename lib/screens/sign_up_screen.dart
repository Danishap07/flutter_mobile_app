import 'package:flutter/material.dart';
import 'package:haatak/theme/app_colors.dart';
import 'package:haatak/widgets/custom_form_field.dart';
import 'package:haatak/widgets/gradient_button.dart';

class SignUp extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  // final TextEditingController _phoneController = TextEditingController();

  SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 48.0, 0, 0),
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                // SliverPadding(
                //   padding: const EdgeInsets.only(top: 53),
                //   sliver: SliverAppBar(
                //     expandedHeight: 136,
                //     stretch: true,
                //     automaticallyImplyLeading: false,
                //     pinned: false,
                //     floating: false,
                //     snap: false,
                //     flexibleSpace: FlexibleSpaceBar(
                //       collapseMode: CollapseMode.parallax,
                //       background: Image.asset(
                //         'assets/images/login_1.png',
                //         width: 175,
                //         height: 136,
                //       ),
                //     ),
                //   ),
                // ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 67),
                        Text(
                          "Create an account",
                          style: textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 36),
                        Text('Enter Your Name', style: textTheme.bodyMedium),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          controller: _nameController,
                          labelText: "Enter Your Name",
                        ),
                        const SizedBox(height: 36),

                        Text('Enter Your Email', style: textTheme.bodyMedium),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          controller: _emailController,
                          labelText: "Enter Your Email",
                        ),

                        const SizedBox(height: 36),
                        Text('Date of Birth', style: textTheme.bodyMedium),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          controller: _dobController,
                          labelText: "DD/MM/YYYY",
                        ),
                        const SizedBox(height: 36),
                        Text('Gender', style: textTheme.bodyMedium),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 86,
                              height: 86,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: AppColors.themedCardGradient, // Apply the reusable gradient
                                borderRadius: BorderRadius.circular(69),
                                border: Border.all(color: AppColors.lightGreyBorder)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Image.asset('assets/icons/gender_male.png', width: 40, height: 40,),
                              )
                            ),
                            const SizedBox(width: 18,),
                            Container(
                              width: 86,
                              height: 86,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                // gradient: AppColors.themedCardGradient, // Apply the reusable gradient
                                borderRadius: BorderRadius.circular(69),
                                border: Border.all(color: AppColors.cardBorder)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Image.asset('assets/icons/gender_female.png', width: 40, height: 40,),
                              )
                            ),
                            const SizedBox(width: 18,),
                            Container(
                              width: 86,
                              height: 86,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                // gradient: AppColors.themedCardGradient, // Apply the reusable gradient
                                borderRadius: BorderRadius.circular(69),
                                border: Border.all(color: AppColors.cardBorder)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Image.asset('assets/icons/gender_trans.png', width: 40, height: 40,),
                              )
                            ),
                            
                          ],
                        ),
                        const SizedBox(height: 36,),
                            GradientButton(onPressed: () {}, text: "Sign Up")
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
