import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/presentation/payment_mehods.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class NotificationItem extends StatelessWidget {
  int noteId;
  int noteType;
  String title;
  String subtitle;
  bool isRead;
  NotificationItem({
    required this.noteId,
    required this.noteType,
    required this.title,
    required this.subtitle,
    required this.isRead,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        if (noteType == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const PaymentMethods();
              },
            ),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return const Mynavbar();
              },
            ),
          );
        }
      },
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
                      backgroundColor:
                          SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
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
                  width: MediaQuery.of(context).size.width * 0.72,
                  child: Text(
                    title,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade900
                          : Colors.white,
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
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade600
                          : Colors.grey.shade400,
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
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/notification.png"),
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
