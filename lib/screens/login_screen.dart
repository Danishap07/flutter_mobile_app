import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haatak/screens/verify_otp_screen.dart';
import 'package:haatak/theme/app_colors.dart';
import 'package:haatak/widgets/custom_form_field.dart';
import 'package:haatak/widgets/gradient_button.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Add scroll view
        child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 23, bottom: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome!',
                    style: GoogleFonts.montserrat(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    'Gold lover...',
                    style: GoogleFonts.montserrat(
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textBlue,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Image.asset('assets/images/login_1.png', height: 242, width: 312),
            const SizedBox(height: 40),
            const Text(
              'Log in using',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.textBlue,
              ),
            ),
            const SizedBox(height: 24),
            // Reusable Widget for Input form fields
            CustomTextFormField(controller: _emailController, labelText: "Email or phone number"),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/google_icon.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(width: 32),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/apple_icon.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(width: 32),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/facebook_icon.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textBlue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GradientButton(
                    onPressed: () {
                      // Add Sign Up page here I have redirected to VerifyOTP for development. 
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyOTP()),
                      );
                    },
                    text: 'Sign Up',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    )
    );
  }
}
