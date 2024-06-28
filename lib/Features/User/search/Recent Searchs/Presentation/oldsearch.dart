import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class OldSearch extends StatelessWidget {
  final String text;
  final int recentSearchId;
  const OldSearch({
    required this.text,
    required this.recentSearchId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 12, top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Icon(
              PhosphorIcons.clock(PhosphorIconsStyle.regular),
              size: 22,
              color: Colors.grey.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
