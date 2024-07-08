import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/Presentation/searchitem.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == false
            ? Colors.white
            : Colors.grey.shade900,
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
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade800
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        textDirection: TextDirection.rtl,
                        cursorColor:
                            SharedPreferencesUtils().getisDark() == false
                                ? Colors.grey.shade900
                                : Colors.white,
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
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.grey.shade800
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          suffixIcon: Icon(
                            PhosphorIcons.magnifyingGlass(
                              PhosphorIconsStyle.regular,
                            ),
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.grey.shade900
                                : Colors.white,
                            size: 22,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                          size: 26,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
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
                                        'http://10.0.2.2:8000${searchresultsentity.searchResults[index].productImage}';
                                    return SearchItem(
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
                            : Center(
                                child: Text(
                                  "لاتوجد عناصر متطابقة",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
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
            ],
          ),
        ),
      ),
    );
  }
}
