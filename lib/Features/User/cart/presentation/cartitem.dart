import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/dialog_delete.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../Core/constant/colors_constant.dart';
import '../Manager/Cart Items Cubit/cartitems_cubit.dart';

// ignore: must_be_immutable
class CartItem extends StatelessWidget {
  String image;
  String title;
  int quantity;
  int price;
  int id;
  CartItem(
      {required this.image,
      required this.title,
      required this.quantity,
      required this.price,
      required this.id,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
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
                      if (quantity <= 30) {
                        quantity++;
                        context
                            .read<QuantitiyupdateCubit>()
                            .quantityupdate(id, quantity);
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
                  Text(
                    quantity.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade900
                          : Colors.white,
                    ),
                  ),
                  InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {
                      if (quantity >= 2) {
                        quantity--;
                        context
                            .read<QuantitiyupdateCubit>()
                            .quantityupdate(id, quantity);
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
                      // Text(
                      //   " ألف",
                      //   style: TextStyle(
                      //     fontSize: 14,
                      //     fontWeight: FontWeight.bold,
                      //     color: ColorConstant.darkColor,
                      //   ),
                      // ),
                      Text(
                        " ${price.ceilToDouble().toStringAsFixed(2)}",
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
            Container(
              width: MediaQuery.of(context).size.width * 0.32,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(13),
                  bottomRight: Radius.circular(13),
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
      ),
    );
  }
}
