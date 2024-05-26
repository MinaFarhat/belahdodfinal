import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class NotificationItem extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  bool isRead;
  NotificationItem(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.isRead,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isRead == false
                ? Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: CircleAvatar(
                      backgroundColor: ColorConstant.mainColor,
                      radius: 4,
                    ),
                  )
                : Container(),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    title,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.darkColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    subtitle,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(image),
                ),
                Positioned(
                  bottom: 2,
                  child: Center(
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstant.mainColor,
                      child: Icon(
                        PhosphorIcons.bellRinging(PhosphorIconsStyle.regular),
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
