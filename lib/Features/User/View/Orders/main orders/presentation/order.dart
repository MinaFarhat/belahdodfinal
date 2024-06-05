
import 'package:belahododfinal/Features/Widgets/dialog_search.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../../Core/constant/colors_constant.dart';
import 'orderitem.dart';

// ignore: must_be_immutable
class Orders extends StatelessWidget {
  Orders({super.key});
  List<Map<String, dynamic>> ordersList = [
    {
      "date": "15/2/2024",
      "stateDialog": "الطلبية قيد المعالجة",
      "time": "خلال 3 أيام",
      "totalPrice": 500,
      "address": "دمشق/الميدان",
      "stateOfOrder": "قيد المعالجة",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          name: "الطلبات",
          leading: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) {
                  return const SearchDialog();
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(
                PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.regular),
                color: ColorConstant.mainColor,
                size: 26,
              ),
            ),
          ),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
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
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
            itemCount: ordersList.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 5,
              mainAxisExtent: 220,
              childAspectRatio: 4 / 4.5,
            ),
            itemBuilder: ((context, index) {
              return OrderItem(
                date: ordersList[index]['date'],
                stateDialog: ordersList[index]['stateDialog'],
                time: ordersList[index]['time'],
                totalPrice: ordersList[index]['totalPrice'],
                address: ordersList[index]['address'],
                stateOfOrder: ordersList[index]['stateOfOrder'],
              );
            }),
          ),
        ),
      ),
    );
  }
}
