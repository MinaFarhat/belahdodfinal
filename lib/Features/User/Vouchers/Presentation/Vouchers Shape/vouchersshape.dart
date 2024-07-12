import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VouchersShape extends StatelessWidget {
  const VouchersShape({
    required this.percent,
    super.key,
  });
  final int percent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: (percent >= 0 && percent <= 30)
                ? const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.mirror,
                    colors: [
                        Color(0xFF07C4FF),
                        Color(0xFF60DA15),
                        Colors.yellowAccent,
                      ])
                : (percent >= 31 && percent <= 60)
                    ? const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.mirror,
                        colors: [
                            Color(0xFFFB12E4),
                            Color(0xFFBE15DA),
                            Colors.pink,
                          ])
                    : (percent >= 61 && percent <= 90)
                        ? const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            tileMode: TileMode.mirror,
                            colors: [
                              Color(0xFF4179B9),
                              Color(0xFFDA1515),
                              Color(0xFFFB7A12),
                            ],
                          )
                        : const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            tileMode: TileMode.mirror,
                            colors: [
                              Color(0xFFDA1955),
                              Color(0xFFFB7A12),
                              Color(0xFFFF0D57),
                            ],
                          ),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 50,
                top: 25,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 30,
                top: 35,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 80,
                top: 50,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 40,
                top: 80,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 80,
                top: 80,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 70,
                top: 120,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 70,
                top: 48,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 40,
                bottom: 130,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 180,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 150,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 170,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                right: 35,
                top: 190,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 80,
                top: 10,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                left: 20,
                top: 70,
                child: Icon(
                  PhosphorIcons.columns(PhosphorIconsStyle.regular),
                  size: 18,
                  color: Colors.grey.shade900.withOpacity(0.3),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.07,
                right: MediaQuery.of(context).size.width * 0.125,
                child: Text(
                  "$percent",
                  style: TextStyle(
                    fontSize: 120,
                    color: Colors.grey.shade300.withOpacity(0.35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.18,
                right: MediaQuery.of(context).size.width * 0.24,
                child: Text(
                  "%$percent",
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.255,
                right: MediaQuery.of(context).size.width * 0.225,
                child: const Text(
                  "الإستهلاك",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.305,
                child: SizedBox(
                  width: 500,
                  height: 1,
                  child: CustomPaint(
                    painter: _DashedLinePainter(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.5;

    double dashWidth = 5, dashSpace = 3, startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
