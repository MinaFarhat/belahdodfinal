import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../Core/constant/colors_constant.dart';
import 'noteitem.dart';

// ignore: must_be_immutable
class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});
  List<Map<String, dynamic>> notifications = [
    {
      "image": "assets/images/notification.png",
      "title": "تم إضافة حزمة جديدة",
      "subTitle": "تم إضافة كمية جديدة من الكمية المفضلة لديك",
      "isRead": false,
    },
    {
      "image": "assets/images/notification.png",
      "title": "تمت الموافقة على طلبك",
      "subTitle":
          "كلفة الشحن هي 10000 ليرة سورية والرقم السري هو 1265612 يمكنك استخدام هذا الرقم عند استلام الطلبية",
      "isRead": false,
    },
    {
      "image": "assets/images/notification.png",
      "title": "المنتج غير متوفر حاليا",
      "subTitle":
          "لا تتوفر حاليا كمية أحد المنتجات التي أخترتها عند أنشاء الطلبية أضغط لحذف المنتج او الغاء الطلبية",
      "isRead": true,
    },
    {
      "image": "assets/images/notification.png",
      "title": "تمت الموافقة على طلبك",
      "subTitle": "أن المبلغ الإجمالي هو 500000 ليرة سورية",
      "isRead": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          name: "الإشعارات",
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  PhosphorIcons.bellSlash(PhosphorIconsStyle.regular),
                  size: 26,
                  color: ColorConstant.mainColor,
                ),
              ),
            ),
          ],
          isBottom: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: notifications.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        NotificationItem(
                          image: notifications[index]['image'],
                          title: notifications[index]['title'],
                          subtitle: notifications[index]['subTitle'],
                          isRead: notifications[index]['isRead'],
                        ),
                        index == notifications.length - 1
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                              )
                            : Container(),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
