import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haatak/widgets/dotted_line_separator.dart';
import '../theme/app_colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 90, // Enough height to include vertical padding
        title: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 24),
              onPressed: () => Navigator.of(context).pop(),
            ),
            const SizedBox(width: 12),
            Text(
              'Notifications',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.textBlue,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildNotificationCard()],
        ),
      ),
    );
  }

  Widget _buildNotificationCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '29 April',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textBlue,
          ),
        ),
        const SizedBox(height: 18),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.cardSecondary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.cardBorder, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gold shipped",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "🔔",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cash withdrawal processed",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gold Delivered",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Text(
          '28 April',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textBlue,
          ),
        ),
        const SizedBox(height: 18),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.cardSecondary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.cardBorder, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gold shipped",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "🔔",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cash withdrawal processed",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gold Delivered",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textBlue,
                    ),
                  ),
                  Text(
                    "8:42pm  29 apr",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: AppColors.textBlue,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Text(
                "Hendrerit volutpat arcu enim venenatis sed eget ipsum egestas magna.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.textBlue,
                ),
              ),
              const SizedBox(height: 20),
              DottedLineSeparator(
                gradientColors: [Color.fromARGB(0, 203, 91, 0), Color(0xFFC26208), Color.fromARGB(0, 179, 18, 0)],
                dashWidth: 6,
                dashSpace: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
