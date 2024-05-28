import 'package:flutter/material.dart';

class DiagonalStrikethroughVisitor extends StatelessWidget {
   final String text;
  final TextStyle style;
  const DiagonalStrikethroughVisitor({required this.text,required this.style,super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: style,
        ),
        Positioned.fill(
          child: CustomPaint(
            painter: DiagonalLinePainter(),
          ),
        ),
      ],
    );
   }
}
class DiagonalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2;

    canvas.drawLine(Offset(0, size.height), Offset(size.width, 0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
