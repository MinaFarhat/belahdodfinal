import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart';
import 'package:belahododfinal/Features/User/news/presentation/Details%20Of%20Offer/priceection.dart';
import 'package:belahododfinal/Features/User/news/presentation/offeritems.dart';
import 'package:belahododfinal/Features/Widgets/square_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class DetailsOfOffer extends StatefulWidget {
  const DetailsOfOffer({
    required this.offerImage,
    required this.offerId,
    super.key,
  });
  final String offerImage;
  final int offerId;

  @override
  State<DetailsOfOffer> createState() => _DetailsOfOfferState();
}

class _DetailsOfOfferState extends State<DetailsOfOffer> {
  // List<Map<String, dynamic>> offerProducts = [
  @override
  void initState() {
    context.read<DetailsofofferCubit>().detailsofOffer(widget.offerId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<DetailsofofferCubit, DetailsofofferState>(
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
              return SafeArea(
                child: Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: ColorConstant.mainColor,
                    ),
                  ),
                ),
              );
            },
            initial: () {
              return SafeArea(
                child: Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: ColorConstant.mainColor,
                    ),
                  ),
                ),
              );
            },
            loading: () {
              return SafeArea(
                child: Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: ColorConstant.mainColor,
                    ),
                  ),
                ),
              );
            },
            success: (detailsofofferentity) {
              return Scaffold(
                backgroundColor: ColorConstant.shadowColor,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.92,
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                    image: AssetImage(widget.offerImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.92,
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 24,
                              top: 8,
                              child: InkWell(
                                overlayColor:
                                    WidgetStateProperty.all(Colors.transparent),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height: MediaQuery.of(context).size.height *
                                      0.045,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      PhosphorIcons.arrowRight(
                                          PhosphorIconsStyle.regular),
                                      size: 28,
                                      color: ColorConstant.darkColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              detailsofofferentity.offerName,
                              style: TextStyle(
                                fontSize: 20,
                                color: ColorConstant.darkColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18, top: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: Text(
                                detailsofofferentity.offerDescription,
                                textDirection: TextDirection.rtl,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: ColorConstant.hintTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18, top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              ":منتجات العرض",
                              style: TextStyle(
                                fontSize: 20,
                                color: ColorConstant.darkColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.26,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount:
                              detailsofofferentity.productsofOffer.length,
                          padding: const EdgeInsets.all(8),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: OfferItems(
                                image: detailsofofferentity
                                    .productsofOffer[index]['image'],
                                index: index,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.17,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(0, -2.5),
                        blurRadius: 0.9,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(0, 0),
                        blurRadius: 0.9,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${detailsofofferentity.offerDuration} يوماً',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: ColorConstant.darkColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.012,
                                ),
                                Text(
                                  ':مدة العرض',
                                  style: TextStyle(
                                    color: ColorConstant.hintTextColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            PriceSection(
                              originalPrice: detailsofofferentity.offerOldPrice,
                              discountedPrice:
                                  detailsofofferentity.offerNewPrice,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.013,
                      ),
                      SquareButton(
                        icon:
                            PhosphorIcons.handshake(PhosphorIconsStyle.regular),
                        text: "تأكيد الشراء",
                        onTap: () {},
                      ),
                    ],
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
