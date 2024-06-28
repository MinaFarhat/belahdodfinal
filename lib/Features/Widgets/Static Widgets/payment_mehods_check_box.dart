import 'dart:io';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../User/payment/Payment Methods/Manager/On Arrival Cubit/on_arrival_cubit.dart';

class PaymentMethodsCheckBox extends StatefulWidget {
  const PaymentMethodsCheckBox({super.key});

  @override
  State<PaymentMethodsCheckBox> createState() => _PaymentMethodsCheckBoxState();
}

class _PaymentMethodsCheckBoxState extends State<PaymentMethodsCheckBox> {
  int activeButton = -1;
  final picker = ImagePicker();
  File? selectedImage;
  late List<void Function(BuildContext context)> buttonActions;

  @override
  void initState() {
    super.initState();
    buttonActions = [
      (context) {
        print('Button 0 clicked');
      },
      (context) {
        print('Button 1 clicked');
      },
      (context) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Dialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            ":أدخل صورة الوصل الخاص بالحوالة",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.darkColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'أختيار من المعرض',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: ColorConstant.darkColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                          const SizedBox(width: 8.0),
                                          Icon(
                                            PhosphorIcons.images(
                                                PhosphorIconsStyle.regular),
                                            color: ColorConstant.mainColor,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        _pickImage(
                                            ImageSource.gallery, setState);
                                        Navigator.pop(context);
                                      },
                                      contentPadding:
                                          const EdgeInsets.only(right: 16.0),
                                    ),
                                    ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'ألتقاط صورة',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: ColorConstant.darkColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textDirection: TextDirection.rtl,
                                          ),
                                          const SizedBox(width: 8.0),
                                          Icon(
                                            PhosphorIcons.aperture(
                                                PhosphorIconsStyle.regular),
                                            color: ColorConstant.mainColor,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        _pickImage(
                                            ImageSource.camera, setState);
                                        Navigator.pop(context);
                                      },
                                      contentPadding:
                                          const EdgeInsets.only(right: 16.0),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFE2E2E2),
                            ),
                            child: selectedImage == null
                                ? Center(
                                    child: Icon(
                                      PhosphorIcons.filePlus(
                                          PhosphorIconsStyle.regular),
                                      size: 40,
                                      color: ColorConstant.mainColor,
                                    ),
                                  )
                                : Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFE2E2E2),
                                      image: DecorationImage(
                                        image: FileImage(selectedImage!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        BlocConsumer<TransferCubit, TransferState>(
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
                              success: (transferentity) {
                                Fluttertoast.showToast(
                                  msg: "تم إرسال الطلب بنجاح",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.green,
                                );
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const Mynavbar();
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    context
                                        .read<TransferCubit>()
                                        .sendTransferImage(
                                     selectedImage!,
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: ColorConstant.mainColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "إرسال",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01,
                                        ),
                                        Icon(
                                          PhosphorIcons.paperPlaneTilt(
                                              PhosphorIconsStyle.regular),
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              initial: () {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    context
                                        .read<TransferCubit>()
                                        .sendTransferImage(
                                       selectedImage!,
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: ColorConstant.mainColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "إرسال",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01,
                                        ),
                                        Icon(
                                          PhosphorIcons.paperPlaneTilt(
                                              PhosphorIconsStyle.regular),
                                          size: 22,
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
                                    color: ColorConstant.mainColor,
                                  ),
                                );
                              },
                              success: (transferentity) {
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    context
                                        .read<TransferCubit>()
                                        .sendTransferImage(
                                       selectedImage!,
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: ColorConstant.mainColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "إرسال",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.01,
                                        ),
                                        Icon(
                                          PhosphorIcons.paperPlaneTilt(
                                              PhosphorIconsStyle.regular),
                                          size: 22,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      (context) {
        print('Button 3 clicked');
      },
      (context) {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, right: 12, left: 12),
                      child: Text(
                        "هل انت متأكد منك تريد اختيار طريقة الدفع عند التسليم؟",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.darkColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    BlocConsumer<OnArrivalCubit, OnArrivalState>(
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
                          success: (transferentity) {
                            Fluttertoast.showToast(
                              msg: "تم إرسال الطلب بنجاح",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.green,
                            );
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Mynavbar();
                                },
                              ),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return InkWell(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onTap: () {
                                context.read<OnArrivalCubit>().onArrival();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorConstant.mainColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "تأكيد",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    Icon(
                                      PhosphorIcons.handCoins(
                                          PhosphorIconsStyle.regular),
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          initial: () {
                            return InkWell(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onTap: () {
                                context.read<OnArrivalCubit>().onArrival();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorConstant.mainColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "تأكيد",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    Icon(
                                      PhosphorIcons.handCoins(
                                          PhosphorIconsStyle.regular),
                                      size: 22,
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
                                color: ColorConstant.mainColor,
                              ),
                            );
                          },
                          success: (onarrivalentity) {
                            return InkWell(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onTap: () {
                                context.read<OnArrivalCubit>().onArrival();
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorConstant.mainColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "تأكيد",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    Icon(
                                      PhosphorIcons.handCoins(
                                          PhosphorIconsStyle.regular),
                                      size: 22,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkBoxPay(methodName: "Cash Mobile", buttonIndex: 0),
        checkBoxPay(methodName: "قسائم بلا حدود", buttonIndex: 1),
        checkBoxPay(methodName: "الدفع عن طريق الهرم", buttonIndex: 2),
        checkBoxPay(methodName: "ضد الدفع", buttonIndex: 3),
        checkBoxPay(methodName: "الدفع عند التسليم", buttonIndex: 4),
      ],
    );
  }

  Widget checkBoxPay({
    required String methodName,
    required int buttonIndex,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            methodName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorConstant.darkColor,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (activeButton == buttonIndex) {
                  activeButton = -1;
                } else {
                  activeButton = buttonIndex;
                  buttonActions[buttonIndex](context);
                }
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.065,
              height: MediaQuery.of(context).size.height * 0.032,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: ColorConstant.mainColor,
                  width: 2,
                ),
                color: activeButton == buttonIndex
                    ? ColorConstant.mainColor
                    : Colors.white,
              ),
              child: Center(
                child: activeButton == buttonIndex
                    ? Icon(
                        PhosphorIcons.check(PhosphorIconsStyle.bold),
                        size: 20,
                        color: Colors.white,
                      )
                    : Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickImage(ImageSource source, StateSetter setState) async {
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        selectedImage = File(pickedImage.path);
      });
    }
  }
}
