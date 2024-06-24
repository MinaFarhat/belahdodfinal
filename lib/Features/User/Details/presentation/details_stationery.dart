import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_stationery.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_stationery.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
                    TopPartStationery(
                      photos: stationeryentity.images,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartStationery(
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BlocBuilder<AddtocartCubit, AddtocartState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return InkWell(
                                  overlayColor: WidgetStateProperty.all(
                                      Colors.transparent),
                                  onTap: () {
                                    context
                                        .read<AddtocartCubit>()
                                        .addtocart(widget.productID);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.057,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorConstant.mainColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
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
                               error: (networkExceptions) {
                                Fluttertoast.showToast(
                                  msg: NetworkExceptions.getErrorMessage(
                                    networkExceptions,
                                  ),
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.red,
                                );
                                return Container();
                              },
                              success: (addtocartentity) {
                                WidgetsBinding.instance.addPostFrameCallback(
                                  (_) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(addtocartentity.message),
                                      ),
                                    );
                                  },
                                );
                                return Container();
                              },
                              loading: () {
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: ColorConstant.mainColor,
                                  ),
                                );
                              },
                              initial: () {
                                return InkWell(
                                  overlayColor: WidgetStateProperty.all(
                                      Colors.transparent),
                                  onTap: () {
                                    context
                                        .read<AddtocartCubit>()
                                        .addtocart(widget.productID);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.057,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorConstant.mainColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.008,
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
                );
              },
            );
          },
        ),
      ),
    );
  }
}
