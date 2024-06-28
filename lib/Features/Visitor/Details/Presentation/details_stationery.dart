import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Bottom%20Part/bottom_part_stationery.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Top%20Part/top_part_stationery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsStationeryVisitor extends StatefulWidget {
  DetailsStationeryVisitor({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsStationeryVisitor> createState() =>
      _DetailsStationeryVisitorState();
}

class _DetailsStationeryVisitorState extends State<DetailsStationeryVisitor> {
  List<String> locations = [
    "دار الحافظ(دمشق)",
    "العلماء الصغار(دمشق)",
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
        backgroundColor: Colors.white,
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
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              initial: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
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
              success: (stationeryentity) {
                return ListView(
                  children: [
                    TopPartStationeryVisitor(
                      photos: stationeryentity.images,
                      productId: widget.productID,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartStationeryVisitor(
                      productId: widget.productID,
                      title: stationeryentity.title,
                      subTitle: stationeryentity.subTitle,
                      price: stationeryentity.price,
                      gameObjectives: stationeryentity.gameObjectives,
                      publisher: stationeryentity.publisher,
                      specifications: stationeryentity.specifications,
                      materials: stationeryentity.materials,
                      section: "قسم الأطفال",
                      amountwhorates: 500,
                      amountwhofavorite: 500,
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
