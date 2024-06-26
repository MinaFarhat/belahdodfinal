import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../cart/Manager/Add To Cart Cubit/addtocart_cubit.dart';

// ignore: must_be_immutable
class BottomPartStationery extends StatelessWidget {
  BottomPartStationery({
    required this.productId,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.publisher,
    required this.section,
    required this.gameObjectives,
    required this.amountwhorates,
    required this.amountwhofavorite,
    required this.specifications,
    required this.materials,
    required this.locations,
    super.key,
  });
  int productId;
  String title;
  String subTitle;
  int price;
  String publisher;
  String section;
  String gameObjectives;
  int amountwhorates;
  int amountwhofavorite;
  String specifications;
  String materials;
  List<String> locations;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.032,
            child: Text(
              subTitle,
              textDirection: TextDirection.rtl,
              maxLines: 5,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "ألف ليرة سورية",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " $price",
                style: TextStyle(
                  color: ColorConstant.mainColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                ":السعر",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                publisher,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                ":اسم المنتج او الشركة المصنعة",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                section,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                ":القسم",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ":أهداف اللعبة",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.07,
                child: Text(
                  gameObjectives,
                  textDirection: TextDirection.rtl,
                  maxLines: 5,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Text(
                      "($amountwhorates)",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    RatingBar(
                      minRating: 0,
                      maxRating: 5,
                      itemSize: 18,
                      updateOnDrag: true,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                      ratingWidget: RatingWidget(
                          full: Icon(
                            PhosphorIcons.star(PhosphorIconsStyle.fill),
                            size: 12,
                            color: const Color(0xFFFB7A12),
                          ),
                          half: Container(),
                          empty: Icon(
                            PhosphorIcons.star(PhosphorIconsStyle.regular),
                            size: 12,
                            color: const Color(0xFFFB7A12),
                          )),
                      onRatingUpdate: (value) {},
                    ),
                  ],
                ),
              ),
              Text(
                ":التقييم",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "مستخدم",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " $amountwhofavorite",
                style: TextStyle(
                  fontSize: 17,
                  color: ColorConstant.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                " المنتج المفضل لدى",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ":التفاصيل",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.07,
                child: Text(
                  specifications,
                  textDirection: TextDirection.rtl,
                  maxLines: 5,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ":المواد المصنع منه المنتج",
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.04,
                child: Text(
                  materials,
                  textDirection: TextDirection.rtl,
                  maxLines: 5,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          const Text(
            ":الموقع",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: locations.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 12),
                    //   child: InkWell(
                    //     overlayColor:
                    //         WidgetStateProperty.all(Colors.transparent),
                    //     onTap: () {},
                    //     child: Icon(
                    //       PhosphorIcons.heart(PhosphorIconsStyle.regular),
                    //       size: 24,
                    //       color: ColorConstant.mainColor,
                    //     ),
                    //   ),
                    // ),
                    Row(
                      children: [
                        Text(
                          locations[index],
                          style: TextStyle(
                            color: ColorConstant.darkColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          PhosphorIcons.mapPin(PhosphorIconsStyle.regular),
                          size: 24,
                          color: ColorConstant.mainColor,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<AddtocartCubit, AddtocartState>(
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
                    success: (addtocartentity) {
                      Fluttertoast.showToast(
                        msg: "تم إضافة المنتج الى السلة الخاصة بك",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: ColorConstant.mainColor,
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
                          context.read<AddtocartCubit>().addtocart(productId);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.057,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstant.mainColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "إضافة الى السلة",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.008,
                              ),
                              Icon(
                                PhosphorIcons.shoppingCartSimple(
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
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.read<AddtocartCubit>().addtocart(productId);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.057,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstant.mainColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "إضافة الى السلة",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.008,
                              ),
                              Icon(
                                PhosphorIcons.shoppingCartSimple(
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
                      return CircularProgressIndicator(
                        color: ColorConstant.mainColor,
                      );
                    },
                    success: (addtocartentity) {
                      return InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.read<AddtocartCubit>().addtocart(productId);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.057,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorConstant.mainColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "إضافة الى السلة",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.008,
                              ),
                              Icon(
                                PhosphorIcons.shoppingCartSimple(
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
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
        ],
      ),
    );
  }
}
