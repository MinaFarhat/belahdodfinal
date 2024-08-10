import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class VoucherDataPoint extends StatelessWidget {
  const VoucherDataPoint({
    required this.size,
    required this.pointReplacment,
    required this.colors,
    super.key,
  });
  final int size;
  final int pointReplacment;
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "ألف ليرة سورية",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: colors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  size.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Text(
                ":حجم القسيمة",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Icon(
                  PhosphorIcons.circle(PhosphorIconsStyle.fill),
                  size: 20,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "نقطة",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    colors: colors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                },
                child: Text(
                  pointReplacment.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Text(
                ":عدد النقاط الواجب توافرها",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Icon(
                  PhosphorIcons.circle(PhosphorIconsStyle.fill),
                  size: 20,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
