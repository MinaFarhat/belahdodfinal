import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/Manager/Book%20Visitor%20Cubit/book_visitor_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Bottom%20Part/bottom_part_book.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Top%20Part/top_part_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsBookVisitor extends StatefulWidget {
  DetailsBookVisitor({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsBookVisitor> createState() => _DetailsBookVisitorState();
}

class _DetailsBookVisitorState extends State<DetailsBookVisitor> {
  List<String> locations = [
    "دمشق/الحلبوني/شارع المكتبات",
  ];

  @override
  void initState() {
    context.read<BookVisitorCubit>().bookDetailsVisitor(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<BookVisitorCubit, BookVisitorState>(
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
              success: (bookvisitorentity) {
                return ListView(
                  children: [
                    TopPartBookVisitor(
                      photos: bookvisitorentity.images,
                      productId: widget.productID,
                      barcode: bookvisitorentity.barcode,
                      likeCount: bookvisitorentity.likeCount,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartBookVisitor(
                      productId: widget.productID,
                      title: bookvisitorentity.title,
                      subTitle: bookvisitorentity.subTitle,
                      price: bookvisitorentity.price,
                      auther: bookvisitorentity.auther,
                      translater: bookvisitorentity.translater,
                      measurements: bookvisitorentity.measurements,
                      numberofpages: bookvisitorentity.numberofpages.toString(),
                      printtype: bookvisitorentity.printtype,
                      section: bookvisitorentity.sectionName,
                      targetage: bookvisitorentity.targetage,
                      averageRating: bookvisitorentity.averageRating,
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
