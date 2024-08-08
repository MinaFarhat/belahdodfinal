import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/Manager/Pay%20By%20Voucher%20Cubit/pay_by_voucher_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../Vouchers/Manager/Get Vouchers Cubit/get_vouchers_cubit.dart';
import '../../../Vouchers/Presentation/Vouchers Shape/voucherdata.dart';
import '../../../Vouchers/Presentation/Vouchers Shape/vouchersshape.dart';

class PaymentVoucher extends StatefulWidget {
  const PaymentVoucher({
    required this.orderId,
    super.key,
  });
  final int orderId;
  @override
  State<PaymentVoucher> createState() => _PaymentVoucherState();
}

class _PaymentVoucherState extends State<PaymentVoucher> {
  int i = 0;
  @override
  void initState() {
    context.read<GetVouchersCubit>().getVouchers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<GetVouchersCubit, GetVouchersState>(
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
              return Scaffold(
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
              );
            },
            initial: () {
              return Scaffold(
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
              );
            },
            loading: () {
              return Scaffold(
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
              );
            },
            success: (getvoucherentity) {
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == true
                    ? Colors.grey.shade900
                    : Colors.white,
                appBar: SimpleTopBar(
                  name: "الدفع عن طريق القسائم",
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
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      getvoucherentity.vouchers.isNotEmpty
                          ? CarouselSlider(
                              options: CarouselOptions(
                                autoPlayCurve: Curves.fastOutSlowIn,
                                aspectRatio: 6 / 4,
                                viewportFraction: 1,
                                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                                padEnds: true,
                                initialPage: i,
                                pageSnapping: true,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                disableCenter: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    i = index;
                                  });
                                },
                              ),
                              items: getvoucherentity.vouchers.map((v) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              VouchersShape(
                                                percent: getvoucherentity
                                                    .vouchers[i]
                                                    .voucherPercentageConsumedValue,
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            right: 65,
                                            bottom: 65,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.065,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: SharedPreferencesUtils()
                                                            .getisDark() ==
                                                        false
                                                    ? Colors.white
                                                    : Colors.grey.shade900,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 65,
                                            bottom: 65,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.065,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: SharedPreferencesUtils()
                                                            .getisDark() ==
                                                        false
                                                    ? Colors.white
                                                    : Colors.grey.shade900,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            )
                          : Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.25,
                              ),
                              child: Center(
                                child: Text(
                                  "لا توجد قسائم بعد",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? Colors.black
                                            : Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      getvoucherentity.vouchers.isNotEmpty
                          ? VoucherData(
                              size: getvoucherentity
                                  .vouchers[i].voucherTotalValue
                                  .toString(),
                              available: getvoucherentity
                                  .vouchers[i].voucherAvailableValue
                                  .toString(),
                              consumer: getvoucherentity
                                  .vouchers[i].voucherConsumerValue
                                  .toString(),
                              sender:
                                  getvoucherentity.vouchers[i].voucherSender,
                              receiver:
                                  getvoucherentity.vouchers[i].voucherReceiver,
                              date:
                                  getvoucherentity.vouchers[i].voucherCreatedAt,
                            )
                          : Container(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      getvoucherentity.vouchers.isNotEmpty
                          ? BlocConsumer<PayByVoucherCubit, PayByVoucherState>(
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
                                  success: (paybyvoucherentty) {
                                    if (paybyvoucherentty.isSent == true) {
                                      Fluttertoast.showToast(
                                        msg: paybyvoucherentty.message,
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.BOTTOM,
                                        backgroundColor: Colors.green,
                                      );
                                      Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return const Mynavbar();
                                          },
                                        ),
                                        (Route<dynamic> route) => false,
                                      );
                                    } else {
                                      Fluttertoast.showToast(
                                        msg: paybyvoucherentty.message,
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.BOTTOM,
                                        backgroundColor: Colors.red,
                                      );
                                    }
                                  },
                                );
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return InkWell(
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      onTap: () {
                                        context
                                            .read<PayByVoucherCubit>()
                                            .payByVoucher(
                                                widget.orderId,
                                                getvoucherentity
                                                    .vouchers[i].voucherId);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: ColorConstant.mainColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "أختيار",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01,
                                            ),
                                            Icon(
                                              PhosphorIcons.sparkle(
                                                  PhosphorIconsStyle.regular),
                                              size: 24,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  initial: () {
                                    return InkWell(
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      onTap: () {
                                        context
                                            .read<PayByVoucherCubit>()
                                            .payByVoucher(
                                                widget.orderId,
                                                getvoucherentity
                                                    .vouchers[i].voucherId);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: ColorConstant.mainColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "أختيار",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01,
                                            ),
                                            Icon(
                                              PhosphorIcons.sparkle(
                                                  PhosphorIconsStyle.regular),
                                              size: 24,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  loading: () {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: SharedPreferencesUtils()
                                                    .getisDark() ==
                                                false
                                            ? ColorConstant.mainColor
                                            : Colors.white,
                                      ),
                                    );
                                  },
                                  success: (paybyvoucherentity) {
                                    return InkWell(
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      onTap: () {
                                        context
                                            .read<PayByVoucherCubit>()
                                            .payByVoucher(
                                                widget.orderId,
                                                getvoucherentity
                                                    .vouchers[i].voucherId);
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: ColorConstant.mainColor,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "أختيار",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.01,
                                            ),
                                            Icon(
                                              PhosphorIcons.sparkle(
                                                  PhosphorIconsStyle.regular),
                                              size: 24,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            )
                          : Container(),
                    ],
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
