import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Popular%20Products/popularitemvisitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PopularProductsVisitor extends StatefulWidget {
  const PopularProductsVisitor({
    super.key,
  });

  @override
  State<PopularProductsVisitor> createState() => _PopularProductsVisitorState();
}

class _PopularProductsVisitorState extends State<PopularProductsVisitor> {
  @override
  void initState() {
    super.initState();
    context.read<PopularProductsCubit>().getPopularProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PopularProductsCubit, PopularProductsState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (networkExceptions) {
            Fluttertoast.showToast(
              msg: NetworkExceptions.getErrorMessage(networkExceptions),
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
          success: (popularproductsentity) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.15),
                itemCount: popularproductsentity.popularProducts.length ~/ 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final startIndex = index * 5;
                  final images = popularproductsentity.popularProducts
                      .sublist(startIndex, startIndex + 5)
                      .map((e) => '${EndPoints.imageUrl}${e.productImage}')
                      .toList();
                  final productIds = popularproductsentity.popularProducts
                      .sublist(startIndex, startIndex + 5)
                      .map((e) => e.productId)
                      .toList();
                  final sectionIds = popularproductsentity.popularProducts
                      .sublist(startIndex, startIndex + 5)
                      .map((e) => e.sectionId)
                      .toList();
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: PopularItemVisitor(
                      images: images,
                      productIds: productIds,
                      sectionIds: sectionIds,
                      isEven: index % 2 == 0,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
