import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'productitemofsubsection.dart';

// ignore: must_be_immutable
class ProductsOfSubSection extends StatefulWidget {
  ProductsOfSubSection({
    required this.subSectionId,
    required this.sectionId,
    required this.nameSubSection,
    super.key,
  });
  int subSectionId;
  int sectionId;
  String nameSubSection;

  @override
  State<ProductsOfSubSection> createState() => _ProductsOfSubSectionState();
}

class _ProductsOfSubSectionState extends State<ProductsOfSubSection> {
  @override
  void initState() {
    context
        .read<GetproductsofsubsectionCubit>()
        .getProductsofSubSection(widget.subSectionId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        appBar: SimpleTopBar(
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.bold),
                  size: 26,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                ),
              ),
            ),
          ],
          name: widget.nameSubSection,
          isBottom: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, right: 12, left: 12),
          child: BlocConsumer<GetproductsofsubsectionCubit,
              GetproductsofsubsectionState>(
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
                success: (getproductsofsubsectionentity) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: getproductsofsubsectionentity
                            .productsofsubsection.isNotEmpty
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
                            itemCount: getproductsofsubsectionentity
                                .productsofsubsection.length,
                            itemBuilder: (context, index) {
                              String imageUrl =
                                  '${EndPoints.imageUrl}${getproductsofsubsectionentity.productsofsubsection[index].image}';
                              return ProductItemOfSubSection(
                                image: imageUrl,
                                isFavorite: false,
                                subSectionId: widget.subSectionId,
                                sectionId: widget.sectionId,
                                productId: getproductsofsubsectionentity
                                    .productsofsubsection[index].productsId,
                              );
                            },
                          )
                        : Center(
                            child: Text(
                              "لا توجد منتجات بعد في هذا القسم",
                              style: TextStyle(
                                fontSize: 18,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
