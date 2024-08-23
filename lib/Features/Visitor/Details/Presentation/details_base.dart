import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Manager/Base%20Visitor%20Cubit/base_visitor_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Bottom%20Part/bottom_part_base.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Top%20Part/top_part_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsBaseVisitor extends StatefulWidget {
  DetailsBaseVisitor({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsBaseVisitor> createState() => _DetailsBaseVisitorState();
}

class _DetailsBaseVisitorState extends State<DetailsBaseVisitor> {
  List<String> locations = [
    "دمشق/الحلبوني/شارع المكتبات",
  ];

  @override
  void initState() {
    context.read<BaseVisitorCubit>().baseDetailsVisitor(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<BaseVisitorCubit, BaseVisitorState>(
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
              success: (basevisitorentity) {
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
                        TopPartBaseVisitor(
                          photos: basevisitorentity.images == null
                              ? ["assets/images/logo.png"]
                              : basevisitorentity.images!,
                          productId: widget.productID,
                          barcode: basevisitorentity.barcode,
                          likeCount: basevisitorentity.likeCount,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        BottomPartBaseVisitor(
                          productId: widget.productID,
                          title: basevisitorentity.title,
                          subTitle: basevisitorentity.subTitle,
                          price: basevisitorentity.price,
                          section: basevisitorentity.sectionName,
                          averageRating: basevisitorentity.averageRating,
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
