import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/news/presentation/Details%20Of%20Offer/diagonal.dart';
import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  final int originalPrice;
  final int discountedPrice;

  const PriceSection({
    super.key,
    required this.originalPrice,
    required this.discountedPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      'ل.س',
                      style: TextStyle(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      discountedPrice.toString(),
                      style: TextStyle(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'ل.س',
                      style: TextStyle(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade700
                            : Colors.grey.shade400,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 4),
                    DiagonalStrikethrough(
                      text: originalPrice.toString(),
                      style: TextStyle(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade700
                            : Colors.grey.shade400,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 12),
            Text(
              ':السعر',
              style: TextStyle(
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.grey.shade900
                    : Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
