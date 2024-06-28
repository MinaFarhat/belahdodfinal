import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Book%20Cubit/book_cubit.dart';
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
    "دار الحافظ(دمشق)",
    "العلماء الصغار(دمشق)",
  ];

  @override
  void initState() {
    context.read<BookCubit>().bookDetails(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<BookCubit, BookState>(
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
              success: (bookentity) {
                return ListView(
                  children: [
                    TopPartBookVisitor(
                      photos: bookentity.images,
                      productId: widget.productID,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartBookVisitor(
                      productId: widget.productID,
                      title: bookentity.title,
                      subTitle: bookentity.subTitle,
                      price: bookentity.price,
                      auther: bookentity.auther,
                      translater: bookentity.translater,
                      measurements: bookentity.measurements,
                      numberofpages: bookentity.numberofpages.toString(),
                      printtype: bookentity.printtype,
                      section: "قسم الأطفال",
                      targetage: bookentity.targetage,
                      numberwhorates: 500,
                      numberwhofavorite: 500,
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
