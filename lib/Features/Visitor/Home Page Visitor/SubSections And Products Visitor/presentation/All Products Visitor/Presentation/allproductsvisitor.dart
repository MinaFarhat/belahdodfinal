import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/SubSections%20And%20Products%20Visitor/presentation/All%20Products%20Visitor/Presentation/productitemvisitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../../User/homepage/SubSections And Products/presentation/All Products/Get Products Main Section Cubit/get_products_main_section_cubit.dart';

// ignore: must_be_immutable
class AllProductsVisitor extends StatefulWidget {
  AllProductsVisitor({
    required this.sectionId,
    super.key,
  });
  int sectionId;

  @override
  State<AllProductsVisitor> createState() => _AllProductsVisitorState();
}

class _AllProductsVisitorState extends State<AllProductsVisitor> {
  @override
  void initState() {
    context
        .read<GetProductsMainSectionCubit>()
        .getProductsMainSection(widget.sectionId);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocConsumer<GetProductsMainSectionCubit,
          GetProductsMainSectionState>(
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
            success: (getproductsmainsectionentity) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                child:
                    getproductsmainsectionentity.productsMainSection.isNotEmpty
                        ? GridView.builder(
                            padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height * 0.13,
                            ),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 3 / 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                            itemCount: getproductsmainsectionentity
                                .productsMainSection.length,
                            itemBuilder: (context, index) {
                              String imageUrl =
                                  '${EndPoints.imageUrl}${getproductsmainsectionentity.productsMainSection[index].productImage}';
                              return ProductItemVisitor(
                                image: imageUrl,
                                sectionId: getproductsmainsectionentity
                                    .productsMainSection[index].sectionId,
                                productId: getproductsmainsectionentity
                                    .productsMainSection[index].productId,
                              );
                            },
                          )
                        : const Center(
                            child: Text(
                              "لا توجد منتجات بعد في هذا القسم",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
              );
            },
          );
        },
      ),
    );
  }
}
