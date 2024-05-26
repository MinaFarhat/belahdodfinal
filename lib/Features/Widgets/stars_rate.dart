import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class StarsRate extends StatelessWidget {
  int numberofstars;
  StarsRate({
    required this.numberofstars,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (numberofstars == 1) {
      return Row(
        children: [
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
        ],
      );
    } else if (numberofstars == 2) {
      return Row(
        children: [
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
        ],
      );
    } else if (numberofstars == 3) {
      return Row(
        children: [
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
        ],
      );
    } else if (numberofstars == 4) {
      return Row(
        children: [
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.bold),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
          Icon(
            PhosphorIcons.star(PhosphorIconsStyle.fill),
            color: const Color(0xFFFB7A12),
            size: 15,
          ),
        ],
      );
    }
  }
}
