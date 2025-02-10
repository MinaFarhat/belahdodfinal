// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/Search%20By%20QR%20Cubit/search_by_qr_cubit.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_base.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_book.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_game.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_qurans.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_stationery.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Normal%20Searh/searchpagevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Popular%20Products/popularproductsvisitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchVisitor extends StatefulWidget {
  const SearchVisitor({super.key});

  @override
  State<SearchVisitor> createState() => _SearchVisitorState();
}

class _SearchVisitorState extends State<SearchVisitor> {
  String? barcodeResult;

  Future<void> scanBarcode() async {
    try {
      var result = await BarcodeScanner.scan();
      setState(() {
        barcodeResult = result.rawContent;
        print("The barcode is: $barcodeResult");
        if (result.rawContent.isNotEmpty) {
          FlutterBeep.beep();
          context.read<SearchByQrCubit>().searchByQR(barcodeResult!);
        }
      });
    } catch (e) {
      setState(() {
        barcodeResult = 'Failed to get barcode';
        print("Error: $e");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocConsumer<SearchByQrCubit, SearchByQrState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          error: (networkExceptions) {
                            Fluttertoast.showToast(
                              msg: NetworkExceptions.getErrorMessage(
                                  networkExceptions),
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.red,
                            );
                          },
                          success: (searchbyqrentity) {
                            if (searchbyqrentity.isFound == true) {
                              if (searchbyqrentity.sectionId == 1) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsBookVisitor(
                                          productID:
                                              searchbyqrentity.productId!,
                                        ),
                                      ),
                                    )
                                    .then((_) => context
                                        .read<PopularProductsCubit>()
                                        .getPopularProducts());
                              } else if (searchbyqrentity.sectionId == 2) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsGameVisitor(
                                          productID:
                                              searchbyqrentity.productId!,
                                        ),
                                      ),
                                    )
                                    .then((_) => context
                                        .read<PopularProductsCubit>()
                                        .getPopularProducts());
                              } else if (searchbyqrentity.sectionId == 3) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsStationeryVisitor(
                                          productID:
                                              searchbyqrentity.productId!,
                                        ),
                                      ),
                                    )
                                    .then((_) => context
                                        .read<PopularProductsCubit>()
                                        .getPopularProducts());
                              } else if (searchbyqrentity.sectionId == 4) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsQuransVisitor(
                                          productID:
                                              searchbyqrentity.productId!,
                                        ),
                                      ),
                                    )
                                    .then((_) => context
                                        .read<PopularProductsCubit>()
                                        .getPopularProducts());
                              } else if (searchbyqrentity.sectionId == 5 ||
                                  searchbyqrentity.sectionId! > 5) {
                                Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsBaseVisitor(
                                          productID:
                                              searchbyqrentity.productId!,
                                        ),
                                      ),
                                    )
                                    .then((_) => context
                                        .read<PopularProductsCubit>()
                                        .getPopularProducts());
                              }
                            } else {
                              Fluttertoast.showToast(
                                msg: "المنتج الذي تبحث عنه غير متوفر",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.red,
                              );
                            }
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                textDirection: TextDirection.rtl,
                                cursorColor: Colors.grey.shade900,
                                cursorHeight: 20,
                                cursorRadius: const Radius.circular(50),
                                textInputAction: TextInputAction.search,
                                keyboardType: TextInputType.text,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SearchPageVisitor();
                                      },
                                    ),
                                  ).then((_) => context
                                      .read<PopularProductsCubit>()
                                      .getPopularProducts());
                                },
                                decoration: InputDecoration(
                                  hintText: "أبحث",
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  suffixIcon: InkWell(
                                    overlayColor: WidgetStateProperty.all(
                                        Colors.transparent),
                                    onTap: () {
                                      scanBarcode();
                                    },
                                    child: Icon(
                                      PhosphorIcons.qrCode(
                                          PhosphorIconsStyle.regular),
                                      color: Colors.grey.shade900,
                                      size: 22,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          initial: () {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                textDirection: TextDirection.rtl,
                                cursorColor: Colors.grey.shade900,
                                cursorHeight: 20,
                                cursorRadius: const Radius.circular(50),
                                textInputAction: TextInputAction.search,
                                keyboardType: TextInputType.text,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SearchPageVisitor();
                                      },
                                    ),
                                  ).then((_) => context
                                      .read<PopularProductsCubit>()
                                      .getPopularProducts());
                                },
                                decoration: InputDecoration(
                                  hintText: "أبحث",
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  suffixIcon: InkWell(
                                    overlayColor: WidgetStateProperty.all(
                                        Colors.transparent),
                                    onTap: () {
                                      scanBarcode();
                                    },
                                    child: Icon(
                                      PhosphorIcons.qrCode(
                                          PhosphorIconsStyle.regular),
                                      color: Colors.grey.shade900,
                                      size: 22,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
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
                          success: (searchbyqrentity) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextFormField(
                                readOnly: true,
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                textDirection: TextDirection.rtl,
                                cursorColor: Colors.grey.shade900,
                                cursorHeight: 20,
                                cursorRadius: const Radius.circular(50),
                                textInputAction: TextInputAction.search,
                                keyboardType: TextInputType.text,
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SearchPageVisitor();
                                      },
                                    ),
                                  ).then((_) => context
                                      .read<PopularProductsCubit>()
                                      .getPopularProducts());
                                },
                                decoration: InputDecoration(
                                  hintText: "أبحث",
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                  suffixIcon: InkWell(
                                    overlayColor: WidgetStateProperty.all(
                                        Colors.transparent),
                                    onTap: () {
                                      scanBarcode();
                                    },
                                    child: Icon(
                                      PhosphorIcons.qrCode(
                                          PhosphorIconsStyle.regular),
                                      color: Colors.grey.shade900,
                                      size: 22,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade900,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const PopularProductsVisitor(),
            ],
          ),
        ),
      ),
    );
  }
}
