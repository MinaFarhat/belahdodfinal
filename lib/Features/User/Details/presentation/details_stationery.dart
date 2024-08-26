import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_stationery.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_stationery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsStationery extends StatefulWidget {
  DetailsStationery({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsStationery> createState() => _DetailsStationeryState();
}

class _DetailsStationeryState extends State<DetailsStationery> {
  List<String> locations = [
    "دمشق/الحلبوني/شارع المكتبات",
  ];

  @override
  void initState() {
    context.read<StationeryCubit>().stationeryDetails(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: BlocConsumer<StationeryCubit, StationeryState>(
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
              success: (stationeryentity) {
                return ListView(
                  children: [
                    TopPartStationery(
                      photos: stationeryentity.images == null
                          ? ["assets/images/logo.png"]
                          : stationeryentity.images!,
                      productId: widget.productID,
                      barcode: stationeryentity.barcode,
                      isFavorite: stationeryentity.isFavorite,
                      isLike: stationeryentity.isLiked,
                      isDislike: stationeryentity.isDisliked,
                      likeCount: stationeryentity.likeCount,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartStationery(
                      productId: widget.productID,
                      title: stationeryentity.title,
                      subTitle: stationeryentity.subTitle,
                      price: stationeryentity.price,
                      gameObjectives: stationeryentity.gameObjectives,
                      publisher: stationeryentity.publisher,
                      specifications: stationeryentity.specifications,
                      materials: stationeryentity.materials,
                      section: stationeryentity.sectionName,
                      averageRating: stationeryentity.averageRating,
                      userRating: stationeryentity.userRating,
                      locations: locations,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
