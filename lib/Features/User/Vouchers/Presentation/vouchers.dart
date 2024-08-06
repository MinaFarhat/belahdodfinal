import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Vouchers/Manager/Get%20Vouchers%20Cubit/get_vouchers_cubit.dart';
import 'package:belahododfinal/Features/User/Vouchers/Presentation/Add%20Voucher/addvoucher.dart';
import 'package:belahododfinal/Features/User/Vouchers/Presentation/Vouchers%20Shape/voucherdata.dart';
import 'package:belahododfinal/Features/User/Vouchers/Presentation/Vouchers%20Shape/vouchersshape.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Vouchers extends StatefulWidget {
  const Vouchers({super.key});

  @override
  State<Vouchers> createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
  // final List<Map<String, dynamic>> vouchers = [
  //   {
  //     "percent": 25,
  //     "size": "200",
  //     "available": "50",
  //     "consumer": "150",
  //     "sender": "Mina Farhat",
  //     "receiver": "Mina Farhat",
  //     "date": "30/8/2024",
  //   },
  //   {
  //     "percent": 40,
  //     "size": "300",
  //     "available": "50",
  //     "consumer": "150",
  //     "sender": "Mina",
  //     "receiver": "Memo",
  //     "date": "1/9/2024",
  //   },
  //   {
  //     "percent": 80,
  //     "size": "300",
  //     "available": "50",
  //     "consumer": "150",
  //     "sender": "Mina",
  //     "receiver": "Memo",
  //     "date": "1/9/2024",
  //   },
  //   {
  //     "percent": 95,
  //     "size": "300",
  //     "available": "50",
  //     "consumer": "150",
  //     "sender": "Mina",
  //     "receiver": "Memo",
  //     "date": "1/9/2024",
  //   },
  // ];

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
                backgroundColor: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                appBar: SimpleTopBar(
                  name: "القسائم",
                  leading: Container(),
                  // leading: Padding(
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: InkWell(
                  //     overlayColor: WidgetStateProperty.all(Colors.transparent),
                  //     onTap: () {
                  //       showDialog(
                  //         context: context,
                  //         builder: (dialogContext) {
                  //           return DeleteDialog(
                  //             title: "حذف قسيمة",
                  //             subTitle: "هل تريد بالتأكيد حذف القسيمة؟",
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
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlayCurve: Curves.fastOutSlowIn,
                          aspectRatio: 6 / 4,
                          viewportFraction: 1,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                          padEnds: true,
                          initialPage: i,
                          pageSnapping: true,
                          height: MediaQuery.of(context).size.height * 0.4,
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
                                          percent: getvoucherentity.vouchers[i]
                                              .voucherPercentageConsumedValue,
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      right: 65,
                                      bottom: 65,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.065,
                                        height:
                                            MediaQuery.of(context).size.height *
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.065,
                                        height:
                                            MediaQuery.of(context).size.height *
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
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      VoucherData(
                        size: getvoucherentity.vouchers[i].voucherTotalValue
                            .toString(),
                        available: getvoucherentity
                            .vouchers[i].voucherAvailableValue
                            .toString(),
                        consumer: getvoucherentity
                            .vouchers[i].voucherConsumerValue
                            .toString(),
                        sender: getvoucherentity.vouchers[i].voucherSender,
                        receiver: getvoucherentity.vouchers[i].voucherReceiver,
                        date: getvoucherentity.vouchers[i].voucherCreatedAt,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const AddVoucher();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: ColorConstant.mainColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "إنشاء قسيمة",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
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
                      ),
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
