import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/fine_of_order.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../../Core/constant/colors_constant.dart';
import 'orderitemdetail.dart';

// ignore: must_be_immutable
class OrderDetails extends StatefulWidget {
  final int orderId;
  const OrderDetails({
    required this.orderId,
    super.key,
  });

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  void initState() {
    context.read<OrderDetailsCubit>().orderDetails(widget.orderId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<OrderDetailsCubit, OrderDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (networkExceptions) {
              Fluttertoast.showToast(
                msg: NetworkExceptions.getErrorMessage(
                  networkExceptions,
                ),
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: SharedPreferencesUtils().getisDark() == true
                      ? Colors.grey.shade900
                      : Colors.white,
                  body: Center(
                    child: CircularProgressIndicator(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.mainColor
                          : Colors.white,
                    ),
                  ),
                ),
              );
            },
            initial: () {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: SharedPreferencesUtils().getisDark() == true
                      ? Colors.grey.shade900
                      : Colors.white,
                  body: Center(
                    child: CircularProgressIndicator(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.mainColor
                          : Colors.white,
                    ),
                  ),
                ),
              );
            },
            loading: () {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: SharedPreferencesUtils().getisDark() == true
                      ? Colors.grey.shade900
                      : Colors.white,
                  body: Center(
                    child: CircularProgressIndicator(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.mainColor
                          : Colors.white,
                    ),
                  ),
                ),
              );
            },
            success: (orderdetailsentity) {
              return Scaffold(
                extendBody: true,
                backgroundColor: SharedPreferencesUtils().getisDark() == true
                    ? Colors.grey.shade900
                    : Colors.white,
                appBar: SimpleTopBar(
                  name: "تفاصيل الطلبية",
                  // leading: Padding(
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: InkWell(
                  //     overlayColor: WidgetStateProperty.all(Colors.transparent),
                  //     onTap: () {
                  //       showDialog(
                  //         context: context,
                  //         builder: (dialogContext) {
                  //           return DeleteDialog(
                  //             title: "حذف الطلبية",
                  //             subTitle: "هل تريد بالتأكيد حذف الطلبية؟",
                  //             button1: "إلغاء",
                  //             button2: "حذف",
                  //             ontapButton1: () {
                  //               Navigator.pop(dialogContext);
                  //             },
                  //             ontapButton2: () {},
                  //           );
                  //         },
                  //       );
                  //     },
                  //     child: Icon(
                  //       PhosphorIcons.trash(PhosphorIconsStyle.regular),
                  //       color: SharedPreferencesUtils().getisDark() == false
                  //           ? Colors.black
                  //           : Colors.white,
                  //       size: 24,
                  //     ),
                  //   ),
                  // ),
                  leading: Container(),
                  action: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                          size: 26,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
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
                      itemCount: orderdetailsentity.orderProducts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index < orderdetailsentity.orderProducts.length) {
                          String imageUrl =
                              'http://10.0.2.2:8000${orderdetailsentity.orderProducts[index].firstImage}';
                          return OrderItemDetails(
                            orderId: widget.orderId,
                            image: imageUrl,
                            name: orderdetailsentity
                                .orderProducts[index].productName,
                            price:
                                orderdetailsentity.orderProducts[index].price,
                            quantity: orderdetailsentity
                                .orderProducts[index].quantity,
                            productId: orderdetailsentity
                                .orderProducts[index].productsId,
                            sectionId: orderdetailsentity
                                .orderProducts[index].sectionId,
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
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade400
                            : Colors.grey.shade700,
                        offset: const Offset(0, -2.5),
                        blurRadius: 0.9,
                      ),
                      BoxShadow(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade300
                            : Colors.grey.shade600,
                        offset: const Offset(0, 0),
                        blurRadius: 0.9,
                      ),
                    ],
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade800,
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
                          paramter: orderdetailsentity.orderTotalAmount,
                          isQuantity: false,
                          isDetail: false,
                        ),
                        FineOfOrder(
                          text: "الحالة",
                          paramter: orderdetailsentity.orderStatus,
                          isQuantity: false,
                          isDetail: false,
                        ),
                        FineOfOrder(
                          text: "العنوان",
                          paramter: orderdetailsentity.address,
                          isQuantity: false,
                          isDetail: false,
                        ),
                        FineOfOrder(
                          text: "تاريخ الطلب",
                          paramter: orderdetailsentity.orderDate,
                          isQuantity: false,
                          isDetail: false,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
