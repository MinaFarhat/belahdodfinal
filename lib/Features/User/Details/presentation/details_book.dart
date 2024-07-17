import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Book%20Cubit/book_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsBook extends StatefulWidget {
  DetailsBook({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsBook> createState() => _DetailsBookState();
}

class _DetailsBookState extends State<DetailsBook> {
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
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
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
              success: (bookentity) {
                return ListView(
                  children: [
                    TopPartBook(
                      photos: bookentity.images,
                      productId: widget.productID,
                      barcode: bookentity.barcode,
                      isFavorite: bookentity.isFavorite,
                      isLike: bookentity.isLiked,
                      isDislike: bookentity.isDisliked,
                      likeCount: bookentity.likeCount,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartBook(
                      productId: widget.productID,
                      title: bookentity.title,
                      subTitle: bookentity.subTitle,
                      price: bookentity.price,
                      auther: bookentity.auther,
                      translater: bookentity.translater,
                      measurements: bookentity.measurements,
                      numberofpages: bookentity.numberofpages.toString(),
                      printtype: bookentity.printtype,
                      section: bookentity.sectionName,
                      targetage: bookentity.targetage,
                      averageRating: bookentity.averageRating,
                      userRating: bookentity.userRating,
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
