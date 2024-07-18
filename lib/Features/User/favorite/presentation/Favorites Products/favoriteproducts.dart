import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'favitem.dart';

class FavoriteProducts extends StatefulWidget {
  const FavoriteProducts({super.key});

  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  @override
  void initState() {
    context.read<GetfavoritesCubit>().getFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.93,
        child: BlocConsumer<GetfavoritesCubit, GetfavoritesState>(
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
              success: (getfavoritesentity) {
                if (getfavoritesentity.favorites.isNotEmpty) {
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: getfavoritesentity.favorites.length,
                    itemBuilder: ((context, index) {
                      String imageUrl =
                          'http://10.0.2.2:8000${getfavoritesentity.favorites[index].image}';
                      return Column(
                        children: [
                          FavItem(
                            sectionId: getfavoritesentity.favorites[index].sectionId,
                            image: imageUrl,
                            title: getfavoritesentity.favorites[index].name,
                            subtitle:
                                getfavoritesentity.favorites[index].description,
                            numberofstars: 5,
                            numberwhorates: 500,
                            favoriteProductIid: getfavoritesentity
                                .favorites[index].favoriteProductId,
                          ),
                          index == getfavoritesentity.favorites.length - 1
                              ? SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                )
                              : Container(),
                        ],
                      );
                    }),
                  );
                } else {
                  return Center(
                    child: Text(
                      "لا توجد منتجات مفضلة بعد",
                      style: TextStyle(
                        fontSize: 18,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
