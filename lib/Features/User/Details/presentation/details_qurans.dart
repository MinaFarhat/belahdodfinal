import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bootom_part_quraan.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_quraan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsQurans extends StatefulWidget {
  DetailsQurans({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsQurans> createState() => _DetailsQuransState();
}

class _DetailsQuransState extends State<DetailsQurans> {
  List<String> locations = [
    "دار الحافظ(دمشق)",
    "العلماء الصغار(دمشق)",
  ];

  @override
  void initState() {
    context.read<QuraanCubit>().quraanDetails(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: BlocConsumer<QuraanCubit, QuraanState>(
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
              success: (quraanentity) {
                return ListView(
                  children: [
                    TopPartQuraan(
                      photos: quraanentity.images,
                      productId: widget.productID,
                      barcode: quraanentity.barcode,
                      isFavorite: quraanentity.isFavorite,
                      isLike: quraanentity.isLiked,
                      isDislike: quraanentity.isDisliked,
                      likeCount: quraanentity.likeCount,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BootomPartQuraan(
                      productId: widget.productID,
                      title: quraanentity.title,
                      subTitle: quraanentity.subTitle,
                      price: quraanentity.price,
                      size: quraanentity.size,
                      publisher: quraanentity.publisher,
                      numberofpages: quraanentity.numberofpages,
                      printtype: quraanentity.printtype,
                      section: quraanentity.sectionName,
                      specifications: quraanentity.specifications,
                      averageRating: quraanentity.averageRating,
                      userRating: quraanentity.userRating,
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
