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

class BottomPartStationery extends StatefulWidget {
  const BottomPartStationery({
    required this.productId,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.publisher,
    required this.section,
    required this.gameObjectives,
    required this.averageRating,
    required this.userRating,
    required this.specifications,
    required this.materials,
    required this.locations,
    super.key,
  });
  final int productId;
  final String title;
  final String subTitle;
  final int price;
  final String publisher;
  final String section;
  final String gameObjectives;
  final String averageRating;
  final int userRating;
  final String specifications;
  final String materials;
  final List<String> locations;

  @override
  State<BottomPartStationery> createState() => _BottomPartStationeryState();
}

class _BottomPartStationeryState extends State<BottomPartStationery> {
  late String _averageRating;

  @override
  void initState() {
    super.initState();
    _averageRating = widget.averageRating;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            widget.title,
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
              widget.subTitle,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "ألف ليرة سورية",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " ${widget.price}",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? ColorConstant.mainColor
                      : ColorConstant.shadowColor,
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
                widget.publisher,
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
                ":اسم المنتج او الشركة المصنعة",
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
                widget.section,
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ":أهداف اللعبة",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
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
                  widget.gameObjectives,
                  textDirection: TextDirection.rtl,
                  maxLines: 5,
                  style: TextStyle(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.black
                        : Colors.white,
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
                      setState(() {
                        _averageRating = ratingentity.averageRating;
                      });
                    },
                  );
                },
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Text(
                          _averageRating,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        RatingBar(
                          minRating: 0,
                          maxRating: 5,
                          initialRating: widget.userRating.toDouble(),
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
                              PhosphorIcons.star(PhosphorIconsStyle.regular),
                              size: 12,
                              color: const Color(0xFFFB7A12),
                            ),
                          ),
                          onRatingUpdate: (value) {
                            context.read<RatingCubit>().rating(
                                  widget.productId,
                                  value.toInt(),
                                );
                          },
                        ),
                      ],
                    ),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ":التفاصيل",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
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
                  widget.specifications,
                  textDirection: TextDirection.rtl,
                  maxLines: 5,
                  style: TextStyle(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.black
                        : Colors.white,
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
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade800
                      : Colors.grey.shade300,
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
                  widget.materials,
                  textDirection: TextDirection.rtl,
                  maxLines: 5,
                  style: TextStyle(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.black
                        : Colors.white,
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
            itemCount: widget.locations.length,
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
                          widget.locations[index],
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
                          context
                              .read<AddtocartCubit>()
                              .addtocart(widget.productId);
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
                          context
                              .read<AddtocartCubit>()
                              .addtocart(widget.productId);
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
                          context
                              .read<AddtocartCubit>()
                              .addtocart(widget.productId);
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
