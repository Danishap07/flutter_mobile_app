import 'package:flutter/material.dart';

class DottedLineSeparator extends StatelessWidget {
  final double height;
  final Color color;
  final List<Color> gradientColors;
  final double dashWidth;
  final double dashSpace;

  const DottedLineSeparator({
    super.key,
    this.height = 1.5,
    this.color = Colors.black,
    this.gradientColors = const [],
    this.dashWidth = 4,
    this.dashSpace = 4,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DottedLinePainter(
        color: color,
        gradientColors: gradientColors,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
      ),
      size: Size.fromHeight(height),
    );
  }
}

class _DottedLinePainter extends CustomPainter {
  final Color color;
  final List<Color> gradientColors;
  final double dashWidth;
  final double dashSpace;

  _DottedLinePainter({
    required this.color,
    required this.gradientColors,
    required this.dashWidth,
    required this.dashSpace,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height;

    if (gradientColors.length >= 2) {
      paint.shader = LinearGradient(
        colors: gradientColors,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    } else {
      paint.color = gradientColors.isNotEmpty ? gradientColors.first : color;
    }

    double startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}