import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/Manager/Quraan%20Visitor%20Cubit/quraan_visitor_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Bottom%20Part/bootom_part_quraan.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Top%20Part/top_part_quraan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsQuransVisitor extends StatefulWidget {
  DetailsQuransVisitor({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsQuransVisitor> createState() => _DetailsQuransVisitorState();
}

class _DetailsQuransVisitorState extends State<DetailsQuransVisitor> {
  List<String> locations = [
    "دار الحافظ(دمشق)",
    "العلماء الصغار(دمشق)",
  ];

  @override
  void initState() {
    context.read<QuraanVisitorCubit>().quraanDetailsVisitor(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<QuraanVisitorCubit, QuraanVisitorState>(
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
              success: (quraanvisitorentity) {
                return ListView(
                  children: [
                    TopPartQuraanVisitor(
                      photos: quraanvisitorentity.images,
                      productId: widget.productID,
                      barcode: quraanvisitorentity.barcode,
                      likeCount: quraanvisitorentity.likeCount,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BootomPartQuraanVisitor(
                      productId: widget.productID,
                      title: quraanvisitorentity.title,
                      subTitle: quraanvisitorentity.subTitle,
                      price: quraanvisitorentity.price,
                      size: quraanvisitorentity.size,
                      publisher: quraanvisitorentity.publisher,
                      numberofpages: quraanvisitorentity.numberofpages,
                      printtype: quraanvisitorentity.printtype,
                      section: quraanvisitorentity.sectionName,
                      specifications: quraanvisitorentity.specifications,
                      averageRating: quraanvisitorentity.averageRating,
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
