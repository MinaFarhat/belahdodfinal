import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchVisitor extends StatelessWidget {
  const SearchVisitor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleTopBar(
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: ColorConstant.mainColor,
                  child: Icon(
                    PhosphorIcons.barcode(PhosphorIconsStyle.regular),
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          isBottom: true,
          name: null,
        ),
      ),
    );
  }
}
