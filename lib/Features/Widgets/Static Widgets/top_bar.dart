import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? ontapFav;
  final VoidCallback? ontapwishList;
  final VoidCallback? ontapName;

  const TopBar({
    super.key,
    this.ontapName,
    this.ontapFav,
    this.ontapwishList,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
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
      ),
      forceMaterialTransparency: true,
      foregroundColor: Colors.white, // Adjust according to your needs
      leadingWidth: 150,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            InkWell(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: ontapFav,
              child: Icon(
                PhosphorIcons.heart(PhosphorIconsStyle.regular),
                size: 26,
                color:
                    ColorConstant.mainColor, // Adjust according to your needs
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.04,
            ),
            InkWell(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: ontapwishList,
              child: Icon(
                PhosphorIcons.shoppingCart(PhosphorIconsStyle.regular),
                size: 26,
                color: Colors.deepOrange, // Adjust according to your needs
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: ontapName,
            child: Text(
              "بلا حدود",
              style: TextStyle(
                fontSize: 28,
                color:
                    ColorConstant.darkColor, // Adjust according to your needs
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
