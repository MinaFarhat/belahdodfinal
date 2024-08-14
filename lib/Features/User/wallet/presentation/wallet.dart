import 'dart:io';

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class Wallet extends StatelessWidget {
  Wallet({super.key});
  ImagePicker picker = ImagePicker();
  File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == false
            ? Colors.white
            : Colors.grey.shade900,
        appBar: SimpleTopBar(
          name: "المحفظة الإلكترونية",
          leading: Container(),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/wallet.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Text(
                      "يمكن استخدام الرصيد الموجودة داخل المحفظة الإلكترونية الخاصة بك في عمليات الشراء داخل التطبيق",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ":زيادة الرصيد داخل المحفظة الألكترونية",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                    Icon(
                      PhosphorIcons.siren(PhosphorIconsStyle.regular),
                      size: 24,
                      color: Colors.yellow.shade900,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Text(
                            "يمكنك زيادة الرصيد من خلال التوجه الى احدة المراكز التابعة لدار الحافظ للنشر والدفع هناك",
                            maxLines: 5,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.grey.shade300,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Icon(
                          PhosphorIcons.storefront(PhosphorIconsStyle.regular),
                          size: 24,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Text(
                            "يمكنك زيادة الرصيد من خلال إرسال صورة وصل الحوالة بعد الدفع بأحد البنوك الكترونياً",
                            maxLines: 5,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.grey.shade300,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.015,
                        ),
                        Icon(
                          PhosphorIcons.fileImage(PhosphorIconsStyle.regular),
                          size: 24,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.065,
                    ),
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setState) {
                                return Dialog(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: SharedPreferencesUtils()
                                                  .getisDark() ==
                                              false
                                          ? Colors.white
                                          : Colors.grey.shade900,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16),
                                          child: Text(
                                            ":أدخل صورة الوصل الخاص بالحوالة",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: SharedPreferencesUtils()
                                                          .getisDark() ==
                                                      false
                                                  ? Colors.grey.shade900
                                                  : Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          onTap: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    ListTile(
                                                      tileColor:
                                                          SharedPreferencesUtils()
                                                                      .getisDark() ==
                                                                  false
                                                              ? Colors.white
                                                              : Colors.grey
                                                                  .shade900,
                                                      title: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            'أختيار من المعرض',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: SharedPreferencesUtils()
                                                                          .getisDark() ==
                                                                      false
                                                                  ? ColorConstant
                                                                      .darkColor
                                                                  : Colors
                                                                      .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                            textDirection:
                                                                TextDirection
                                                                    .rtl,
                                                          ),
                                                          const SizedBox(
                                                              width: 8.0),
                                                          Icon(
                                                            PhosphorIcons.images(
                                                                PhosphorIconsStyle
                                                                    .regular),
                                                            color: SharedPreferencesUtils()
                                                                        .getisDark() ==
                                                                    false
                                                                ? ColorConstant
                                                                    .mainColor
                                                                : Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () {
                                                        _pickImage(
                                                            ImageSource.gallery,
                                                            setState);
                                                        Navigator.pop(context);
                                                      },
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              right: 16.0),
                                                    ),
                                                    ListTile(
                                                      tileColor:
                                                          SharedPreferencesUtils()
                                                                      .getisDark() ==
                                                                  false
                                                              ? Colors.white
                                                              : Colors.grey
                                                                  .shade900,
                                                      title: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            'ألتقاط صورة',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: SharedPreferencesUtils()
                                                                          .getisDark() ==
                                                                      false
                                                                  ? Colors.grey
                                                                      .shade900
                                                                  : Colors
                                                                      .white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                            textDirection:
                                                                TextDirection
                                                                    .rtl,
                                                          ),
                                                          const SizedBox(
                                                              width: 8.0),
                                                          Icon(
                                                            PhosphorIcons.aperture(
                                                                PhosphorIconsStyle
                                                                    .regular),
                                                            color: SharedPreferencesUtils()
                                                                        .getisDark() ==
                                                                    false
                                                                ? ColorConstant
                                                                    .mainColor
                                                                : Colors.white,
                                                            size: 30,
                                                          ),
                                                        ],
                                                      ),
                                                      onTap: () {
                                                        _pickImage(
                                                            ImageSource.camera,
                                                            setState);
                                                        Navigator.pop(context);
                                                      },
                                                      contentPadding:
                                                          const EdgeInsets.only(
                                                              right: 16.0),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xFFE2E2E2),
                                            ),
                                            child: selectedImage == null
                                                ? Center(
                                                    child: Icon(
                                                      PhosphorIcons.filePlus(
                                                          PhosphorIconsStyle
                                                              .regular),
                                                      size: 40,
                                                      color: ColorConstant
                                                          .mainColor,
                                                    ),
                                                  )
                                                : Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.7,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.2,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: const Color(
                                                          0xFFE2E2E2),
                                                      image: DecorationImage(
                                                        image: FileImage(
                                                            selectedImage!),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          onTap: () {},
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.06,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
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
                                                      PhosphorIconsStyle
                                                          .regular),
                                                  size: 22,
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
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.065,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorConstant.shadowColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "إرسال صورة الحوالة",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
