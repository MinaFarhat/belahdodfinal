// ignore_for_file: avoid_print

import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Normal%20Searh/searchpagevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Popular%20Products/popularproductsvisitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      FlutterBeep.beep();
      setState(() {
        barcodeResult = result.rawContent;
        print("The barcode is: $barcodeResult");
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
                    SizedBox(
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
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            onTap: () {
                              scanBarcode();
                            },
                            child: Icon(
                              PhosphorIcons.qrCode(PhosphorIconsStyle.regular),
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              PopularProductsVisitor(),
            ],
          ),
        ),
      ),
    );
  }
}
