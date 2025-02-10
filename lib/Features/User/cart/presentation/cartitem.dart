// ignore_for_file: use_build_context_synchronously

import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Quantity%20Cubit/quantity_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Quantity%20Cubit/quantity_state.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/dialog_delete.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../Core/constant/colors_constant.dart';
import '../Manager/Cart Items Cubit/cartitems_cubit.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String title;
  final int initialQuantity;
  final int price;
  final int id;
  final int sectionId;

  const CartItem({
    required this.image,
    required this.title,
    required this.initialQuantity,
    required this.price,
    required this.id,
    required this.sectionId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuantityCubit(initialQuantity),
      child: CartItemView(
        image: image,
        title: title,
        price: price,
        id: id,
        sectionId: sectionId,
      ),
    );
  }
}

class CartItemView extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  final int id;
  final int sectionId;

  const CartItemView({
    required this.image,
    required this.title,
    required this.price,
    required this.id,
    required this.sectionId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        if (sectionId == 1) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsBook(
                    productID: id,
                  ),
                ),
              )
              .then((_) => context.read<CartitemsCubit>().getcartitems());
        } else if (sectionId == 2) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsGame(
                    productID: id,
                  ),
                ),
              )
              .then((_) => context.read<CartitemsCubit>().getcartitems());
        } else if (sectionId == 3) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsStationery(
                    productID: id,
                  ),
                ),
              )
              .then((_) => context.read<CartitemsCubit>().getcartitems());
        } else if (sectionId == 4) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsQurans(
                    productID: id,
                  ),
                ),
              )
              .then((_) => context.read<CartitemsCubit>().getcartitems());
        } else if (sectionId == 5 || sectionId > 5) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsBase(
                    productID: id,
                  ),
                ),
              )
              .then((_) => context.read<CartitemsCubit>().getcartitems());
        }
      },
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) {
            return DeleteDialog(
              title: "حذف منتج",
              subTitle: "هل تريد بالتأكيد حذف العنصر؟",
              button1: "إلغاء",
              button2: "حذف",
              ontapButton1: () {
                Navigator.of(context).pop();
              },
              ontapButton2: () {
                context.read<DeleteitemfromcartCubit>().deleteitemfromcart(id);
                Navigator.of(context).pop();
                context.read<CartitemsCubit>().getcartitems();
              },
            );
          },
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.15,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: SharedPreferencesUtils().getisDark() == false
              ? Colors.white
              : Colors.grey.shade900,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 85, top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {
                      if (context.read<QuantityCubit>().state.quantity <= 30) {
                        context.read<QuantityCubit>().increment();
                        context.read<QuantitiyupdateCubit>().quantityupdate(
                              id,
                              context.read<QuantityCubit>().state.quantity,
                            );
                        context.read<CartitemsCubit>().getcartitems();
                      } else {
                        Fluttertoast.showToast(
                          msg: "لقد وصلت الى الحد المسموح به ",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                        );
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            offset: const Offset(0, 2),
                            blurRadius: 0.9,
                          ),
                          BoxShadow(
                            color: Colors.grey.shade700,
                            offset: const Offset(0, -0.1),
                            blurRadius: 0.9,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: ColorConstant.mainColor,
                      ),
                      child: Center(
                        child: Icon(
                          PhosphorIcons.plus(PhosphorIconsStyle.regular),
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<QuantityCubit, QuantityState>(
                    builder: (context, state) {
                      return Text(
                        state.quantity.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
                        ),
                      );
                    },
                  ),
                  InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {
                      if (context.read<QuantityCubit>().state.quantity >= 2) {
                        context.read<QuantityCubit>().decrement();
                        context.read<QuantitiyupdateCubit>().quantityupdate(
                              id,
                              context.read<QuantityCubit>().state.quantity,
                            );
                        context.read<CartitemsCubit>().getcartitems();
                      } else {
                        Fluttertoast.showToast(
                          msg: "لايمكنك إنقاص من كمية هذا المنتج",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                        );
                      }
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            offset: const Offset(0, 2),
                            blurRadius: 0.9,
                          ),
                          BoxShadow(
                            color: Colors.grey.shade700,
                            offset: const Offset(0, -0.1),
                            blurRadius: 0.9,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          PhosphorIcons.minus(PhosphorIconsStyle.regular),
                          size: 16,
                          color: ColorConstant.mainColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.008,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "ل.س",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.008,
                      ),
                      Text(
                        price.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.32,
              height: MediaQuery.of(context).size.height * 0.15,
              child: CachedNetworkImage(
                imageUrl: image,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
