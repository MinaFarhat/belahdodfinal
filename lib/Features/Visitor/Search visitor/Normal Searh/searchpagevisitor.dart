import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Normal%20Searh/searchitemvisitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchPageVisitor extends StatelessWidget {
  SearchPageVisitor({super.key});
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        controller: _searchController,
                        autofocus: true,
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
                        onChanged: (value) {
                          context
                              .read<SearchResultsCubit>()
                              .searchResults(_searchController.text);
                        },
                        decoration: InputDecoration(
                          hintText: "أبحث",
                          hintTextDirection: TextDirection.rtl,
                          hintStyle: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          suffixIcon: Icon(
                            PhosphorIcons.magnifyingGlass(
                              PhosphorIconsStyle.regular,
                            ),
                            color: Colors.grey.shade900,
                            size: 22,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: InkWell(
                        overlayColor: WidgetStateProperty.all(Colors.black),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                          size: 26,
                          color: ColorConstant.darkColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              BlocConsumer<SearchResultsCubit, SearchResultsState>(
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
                    success: (searchresultsentity) {
                      return SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: searchresultsentity.searchResults.isNotEmpty
                            ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 3.6 / 4,
                                  crossAxisSpacing: 2,
                                  mainAxisSpacing: 2,
                                ),
                                itemCount:
                                    searchresultsentity.searchResults.length +
                                        1,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (index <
                                      searchresultsentity
                                          .searchResults.length) {
                                    String imageUrl =
                                        '${EndPoints.imageUrl}${searchresultsentity.searchResults[index].productImage}';
                                    return SearchItemVisitor(
                                      productId: searchresultsentity
                                          .searchResults[index].productId,
                                      sectionId: searchresultsentity
                                          .searchResults[index].sectionId,
                                      productImage: imageUrl,
                                      productName: searchresultsentity
                                          .searchResults[index].productName,
                                    );
                                  } else {
                                    return SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.002,
                                    );
                                  }
                                },
                              )
                            : const Center(
                                child: Text(
                                  "لاتوجد عناصر متطابقة",
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
            ],
          ),
        ),
      ),
    );
  }
}
