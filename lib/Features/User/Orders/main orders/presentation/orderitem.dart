import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../Order Details/presentation/orderdetails.dart';
import '../Get Orders Cubit/get_orders_cubit.dart';

class OrderItem extends StatelessWidget {
  final int orderId;
  final String date;
  final String stateDialog;
  final int totalPrice;
  const OrderItem({
    required this.orderId,
    required this.date,
    required this.stateDialog,
    required this.totalPrice,
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
                orderId: orderId,
              );
            },
          ),
        ).then((_) => context.read<GetOrdersCubit>().getOrders());
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
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.white
                                : Colors.grey.shade900,
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
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? Colors.black
                                            : Colors.white,
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
                                        color: SharedPreferencesUtils()
                                                    .getisDark() ==
                                                false
                                            ? Colors.grey.shade900
                                            : Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      PhosphorIcons.truck(
                                          PhosphorIconsStyle.regular),
                                      size: 24,
                                      color: SharedPreferencesUtils()
                                                  .getisDark() ==
                                              false
                                          ? ColorConstant.mainColor
                                          : Colors.white,
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
                                      totalPrice.toStringAsFixed(3),
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: SharedPreferencesUtils()
                                                    .getisDark() ==
                                                false
                                            ? Colors.grey.shade900
                                            : Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      PhosphorIcons.receipt(
                                          PhosphorIconsStyle.regular),
                                      size: 24,
                                      color: SharedPreferencesUtils()
                                                  .getisDark() ==
                                              false
                                          ? ColorConstant.mainColor
                                          : Colors.white,
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
