import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/stars_rate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../Manager/Add To Favorites Cubit/addtofavorite_cubit.dart';

// ignore: must_be_immutable
class FavItem extends StatelessWidget {
  String image;
  String title;
  String subtitle;
  int numberofstars;
  int numberwhorates;
  int favoriteProductIid;
  FavItem(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.numberofstars,
      required this.numberwhorates,
      required this.favoriteProductIid,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: SharedPreferencesUtils().getisDark() == false
              ? const Color(0xFFECF2F8)
              : Colors.grey.shade800,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: BlocConsumer<AddtofavoriteCubit, AddtofavoriteState>(
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
                      return InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context
                              .read<AddtofavoriteCubit>()
                              .addtofavorites(favoriteProductIid);
                          Fluttertoast.showToast(
                            msg: "تم إزالة المنتج من القائمة المفضلة",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                          );

                          context.read<GetfavoritesCubit>().getFavorites();
                        },
                        child: Icon(
                          PhosphorIcons.heart(PhosphorIconsStyle.fill),
                          size: 26,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      );
                    },
                    initial: () {
                      return InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context
                              .read<AddtofavoriteCubit>()
                              .addtofavorites(favoriteProductIid);
                          Fluttertoast.showToast(
                            msg: "تم إزالة المنتج من القائمة المفضلة",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                          );
                          context.read<GetfavoritesCubit>().getFavorites();
                        },
                        child: Icon(
                          PhosphorIcons.heart(PhosphorIconsStyle.fill),
                          size: 26,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
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
                    success: (addtofavoritesentity) {
                      return InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context
                              .read<AddtofavoriteCubit>()
                              .addtofavorites(favoriteProductIid);
                          Fluttertoast.showToast(
                            msg: "تم إزالة المنتج من القائمة المفضلة",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                          );
                          context.read<GetfavoritesCubit>().getFavorites();
                        },
                        child: Icon(
                          PhosphorIcons.heart(PhosphorIconsStyle.fill),
                          size: 26,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          title,
                          textDirection: TextDirection.rtl,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.grey.shade900
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "(${numberwhorates.toString()})",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                            ),
                          ),
                          StarsRate(
                            numberofstars: numberofstars,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.52,
                        child: Text(
                          subtitle,
                          maxLines: 3,
                          textDirection: TextDirection.rtl,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.grey.shade900
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.36,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(image),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) {
                        Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/logo.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
