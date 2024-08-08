import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Rating%20Cubit/rating_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../cart/Manager/Add To Cart Cubit/addtocart_cubit.dart';

// ignore: must_be_immutable
class BottomPartBase extends StatelessWidget {
  BottomPartBase({
    required this.productId,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.section,
    required this.averageRating,
    required this.userRating,
    required this.locations,
    super.key,
  });
  final int productId;
  final String title;
  final String subTitle;
  final int price;
  final String section;
  String averageRating;
  int userRating;
  final List<String> locations;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: SharedPreferencesUtils().getisDark() == false
                  ? Colors.black
                  : Colors.white,
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
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.grey.shade800
                    : Colors.grey.shade300,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "ليرة سورية",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " $price",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
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
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
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
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
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
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocConsumer<RatingCubit, RatingState>(
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
                    success: (ratingentity) {
                      averageRating = ratingentity.averageRating;
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text(
                              averageRating,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                            RatingBar(
                              minRating: 0,
                              maxRating: 5,
                              initialRating: userRating.toDouble(),
                              itemSize: 18,
                              updateOnDrag: false,
                              tapOnlyMode: true,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              ratingWidget: RatingWidget(
                                full: Icon(
                                  PhosphorIcons.star(PhosphorIconsStyle.fill),
                                  size: 12,
                                  color: const Color(0xFFFB7A12),
                                ),
                                half: Container(),
                                empty: Icon(
                                  PhosphorIcons.star(
                                      PhosphorIconsStyle.regular),
                                  size: 12,
                                  color: const Color(0xFFFB7A12),
                                ),
                              ),
                              onRatingUpdate: (value) {
                                userRating = value.toInt();
                                context.read<RatingCubit>().rating(
                                      productId,
                                      value.toInt(),
                                    );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    initial: () {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text(
                              averageRating,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                            RatingBar(
                              minRating: 0,
                              maxRating: 5,
                              initialRating: userRating.toDouble(),
                              itemSize: 18,
                              updateOnDrag: false,
                              tapOnlyMode: true,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              ratingWidget: RatingWidget(
                                full: Icon(
                                  PhosphorIcons.star(PhosphorIconsStyle.fill),
                                  size: 12,
                                  color: const Color(0xFFFB7A12),
                                ),
                                half: Container(),
                                empty: Icon(
                                  PhosphorIcons.star(
                                      PhosphorIconsStyle.regular),
                                  size: 12,
                                  color: const Color(0xFFFB7A12),
                                ),
                              ),
                              onRatingUpdate: (value) {
                                userRating = value.toInt();
                                context.read<RatingCubit>().rating(
                                      productId,
                                      value.toInt(),
                                    );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                          strokeWidth: 2,
                          strokeAlign: 0,
                        ),
                      );
                    },
                    success: (ratingentity) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Text(
                              averageRating,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                            RatingBar(
                              minRating: 0,
                              maxRating: 5,
                              initialRating: userRating.toDouble(),
                              itemSize: 18,
                              updateOnDrag: false,
                              tapOnlyMode: true,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              ratingWidget: RatingWidget(
                                full: Icon(
                                  PhosphorIcons.star(PhosphorIconsStyle.fill),
                                  size: 12,
                                  color: const Color(0xFFFB7A12),
                                ),
                                half: Container(),
                                empty: Icon(
                                  PhosphorIcons.star(
                                      PhosphorIconsStyle.regular),
                                  size: 12,
                                  color: const Color(0xFFFB7A12),
                                ),
                              ),
                              onRatingUpdate: (value) {
                                userRating = value.toInt();
                                context.read<RatingCubit>().rating(
                                      productId,
                                      value.toInt(),
                                    );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              Text(
                ":التقييم",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Text(
            ":الموقع",
            style: TextStyle(
              color: SharedPreferencesUtils().getisDark() == false
                  ? Colors.black
                  : Colors.white,
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
                    Row(
                      children: [
                        Text(
                          locations[index],
                          style: TextStyle(
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.grey.shade900
                                : Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          PhosphorIcons.mapPin(PhosphorIconsStyle.regular),
                          size: 24,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
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
