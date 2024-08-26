import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Base%20Cubit/base_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_base.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsBase extends StatefulWidget {
  DetailsBase({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsBase> createState() => _DetailsBaseState();
}

class _DetailsBaseState extends State<DetailsBase> {
  List<String> locations = [
    "دمشق/الحلبوني/شارع المكتبات",
  ];

  @override
  void initState() {
    context.read<BaseCubit>().baseDetails(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: BlocConsumer<BaseCubit, BaseState>(
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
                return Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                );
              },
              initial: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                );
              },
              success: (baseentity) {
                return BlocConsumer<AddtocartCubit, AddtocartState>(
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
                    return ListView(
                      children: [
                        TopPartBase(
                          photos: baseentity.images == null
                              ? ["assets/images/logo.png"]
                              : baseentity.images!,
                          productId: widget.productID,
                          barcode: baseentity.barcode,
                          isFavorite: baseentity.isFavorite,
                          isLike: baseentity.isLiked,
                          isDislike: baseentity.isDisliked,
                          likeCount: baseentity.likeCount,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        BottomPartBase(
                          productId: widget.productID,
                          title: baseentity.title,
                          subTitle: baseentity.subTitle,
                          price: baseentity.price,
                          section: baseentity.sectionName,
                          averageRating: baseentity.averageRating,
                          userRating: baseentity.userRating,
                          locations: locations,
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
