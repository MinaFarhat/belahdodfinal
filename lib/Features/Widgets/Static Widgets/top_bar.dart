import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
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
              color: SharedPreferencesUtils().getisDark() == false
                  ? Colors.grey.shade700
                  : Colors.grey.shade500,
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
                color: SharedPreferencesUtils().getisDark() == false
                    ? ColorConstant.mainColor
                    : ColorConstant.shadowColor,
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
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.deepOrange
                    : Colors.orangeAccent.shade400,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: InkWell(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            onTap: ontapName,
            child: Text(
              "بلا حدود",
              style: TextStyle(
                fontSize: 28,
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.grey.shade900
                    : Colors.white,
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
