import 'package:belahododfinal/Features/Widgets/dialog_delete.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:belahododfinal/Features/Widgets/square_button.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../../../../Core/constant/colors_constant.dart';
import 'cartitem.dart';

// ignore: must_be_immutable
class Cart extends StatelessWidget {
  Cart({super.key});
  List<Map<String, dynamic>> cartItems = [
    {
      "image": "assets/images/tool1.png",
      "title": "قلم رصاص",
      "quantity": 5,
      "price": 5000,
    },
    {
      "image": "assets/images/tool1.png",
      "title": "قلم رصاص",
      "quantity": 5,
      "price": 5000,
    },
    {
      "image": "assets/images/tool1.png",
      "title": "قلم رصاص",
      "quantity": 5,
      "price": 5000,
    },
    {
      "image": "assets/images/tool1.png",
      "title": "قلم رصاص",
      "quantity": 5,
      "price": 5000,
    },
    {
      "image": "assets/images/tool1.png",
      "title": "قلم رصاص",
      "quantity": 5,
      "price": 5000,
    },
    {
      "image": "assets/images/tool1.png",
      "title": "قلم رصاص",
      "quantity": 5,
      "price": 5000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          name: "السلة",
          leading: Container(),
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
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            decoration: BoxDecoration(
              color: ColorConstant.shadowColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ListView.builder(
                itemCount: cartItems.length + 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index < cartItems.length) {
                    return GestureDetector(
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return DeleteDialog(
                              title: "حذف منتج",
                              subTitle:
                                  "هل تريد بالتأكيد حذف العنصر من السلة الخاصة بك؟",
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
                      child: CartItem(
                        image: cartItems[index]['image'],
                        title: cartItems[index]['title'],
                        quantity: cartItems[index]['quantity'],
                        price: cartItems[index]['price'],
                      ),
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
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.09,
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "ل.س",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Text(
                      "500.000",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                  ],
                ),
                SquareButton(
                  icon: PhosphorIcons.handshake(PhosphorIconsStyle.regular),
                  text: "تأكيد الشراء",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
