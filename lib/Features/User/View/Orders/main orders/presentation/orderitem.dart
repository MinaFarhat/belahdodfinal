import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../Order Details/presentation/orderdetails.dart';

// ignore: must_be_immutable
class OrderItem extends StatelessWidget {
  String date;
  String stateDialog;
  String time;
  int totalPrice;
  String address;
  String stateOfOrder;
  OrderItem({
    required this.date,
    required this.stateDialog,
    required this.time,
    required this.totalPrice,
    required this.address,
    required this.stateOfOrder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return OrderDetails(
                address: address,
                date: date,
                stateOfOrder: stateOfOrder,
                totalPrice: totalPrice,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                image: const DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConstant.darkColor,
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(18),
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            Positioned(
              child: Center(
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorConstant.darkColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 2,
              top: 1,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "حالة الطلبية",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstant.darkColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 12, top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      stateDialog,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      PhosphorIcons.truck(
                                          PhosphorIconsStyle.regular),
                                      size: 24,
                                      color: ColorConstant.mainColor,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 12, top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      time,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      PhosphorIcons.clock(
                                          PhosphorIconsStyle.regular),
                                      size: 24,
                                      color: ColorConstant.mainColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Icon(
                  PhosphorIcons.warningCircle(PhosphorIconsStyle.regular),
                  size: 35,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
