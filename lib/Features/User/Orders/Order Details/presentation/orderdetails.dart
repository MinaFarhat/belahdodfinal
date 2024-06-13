import 'package:belahododfinal/Features/Widgets/dialog_delete.dart';
import 'package:belahododfinal/Features/Widgets/fine_of_order.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../../Core/constant/colors_constant.dart';
import 'orderitemdetail.dart';

// ignore: must_be_immutable
class OrderDetails extends StatelessWidget {
  int totalPrice;
  String address;
  String date;
  String stateOfOrder;
  OrderDetails({
    required this.totalPrice,
    required this.address,
    required this.date,
    required this.stateOfOrder,
    super.key,
  });
  List<Map<String, dynamic>> orderItems = [
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
    {
      "image": "assets/images/tool1.png",
      "name": "قلم المعرفة",
      "price": 2500,
      "quantity": 20,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: ColorConstant.shadowColor,
        appBar: SimpleTopBar(
          name: "تفاصيل الطلبية",
          leading: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DeleteDialog(
                    title: "حذف الطلبية",
                    subTitle: "هل تريد بالتأكيد حذف الطلبية؟",
                    button1: "إلغاء",
                    button2: "حذف",
                    ontapButton1: () {
                      Navigator.of(context).pop();
                    },
                    ontapButton2: () {},
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                PhosphorIcons.trashSimple(PhosphorIconsStyle.regular),
                color: Colors.red.shade600,
                size: 26,
              ),
            ),
          ),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 26,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
          isBottom: false,
        ),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.88,
            child: ListView.builder(
              itemCount: orderItems.length + 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index < orderItems.length) {
                  return OrderItemDetails(
                    image: orderItems[index]['image'],
                    name: orderItems[index]['name'],
                    price: orderItems[index]['price'],
                    quantity: orderItems[index]['quantity'],
                  );
                } else {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  );
                }
              },
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.16,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(0, -2.5),
                blurRadius: 0.9,
              ),
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(0, 0),
                blurRadius: 0.9,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FineOfOrder(
                  text: "السعر الإجمالي",
                  paramter: totalPrice,
                  isQuantity: false,
                  isDetail: false,
                ),
                FineOfOrder(
                  text: "الحالة",
                  paramter: stateOfOrder,
                  isQuantity: false,
                  isDetail: false,
                ),
                FineOfOrder(
                  text: "العنوان",
                  paramter: address,
                  isQuantity: false,
                  isDetail: false,
                ),
                FineOfOrder(
                  text: "تاريخ الطلب",
                  paramter: date,
                  isQuantity: false,
                  isDetail: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
