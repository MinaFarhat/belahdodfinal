import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SimpleTopBar extends StatelessWidget implements PreferredSizeWidget {
  String? name;
  Widget leading;
  List<Widget> action;
  bool isBottom;
  SimpleTopBar({
    required this.name,
    required this.action,
    required this.isBottom,
    required this.leading,
    super.key,
  });
  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      leadingWidth: name == null ? 10 : 50,
      bottom: isBottom == true
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey.shade700,
                    width: 1.2,
                  ),
                ),
              ),
            )
          : PreferredSize(
              preferredSize: const Size(0, 0),
              child: Container(),
            ),
      forceMaterialTransparency: true,
      surfaceTintColor: ColorConstant.mainColor,
      shadowColor: ColorConstant.darkColor,
      actions: action,
      centerTitle: true,
      title: name != null
          ? Text(
              name!,
              style: TextStyle(
                fontSize: 20,
                color: ColorConstant.darkColor,
                fontWeight: FontWeight.bold,
              ),
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
