import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart';
import 'package:belahododfinal/Features/User/payment/Address/Presentation/send_order.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/square_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../../../../Core/constant/colors_constant.dart';
import 'cartitem.dart';

// ignore: must_be_immutable
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    context.read<CartitemsCubit>().getcartitems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CartitemsCubit, CartitemsState>(
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
            success: (getcartitemsentity) {
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == true
                    ? Colors.grey.shade900
                    : Colors.white,
                extendBody: true,
                appBar: SimpleTopBar(
                  name: "السلة",
                  leading: Container(),
                  action: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
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
                  isBottom: false,
                ),
                body: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFECF2F8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        itemCount: getcartitemsentity.products.length + 1,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          if (index < getcartitemsentity.products.length) {
                            String imageUrl =
                                'http://10.0.2.2:8000${getcartitemsentity.products[index].image}';
                            return CartItem(
                              image: imageUrl,
                              title: getcartitemsentity.products[index].name,
                              initialQuantity:
                                  getcartitemsentity.products[index].quantity,
                              price: getcartitemsentity.products[index].price,
                              id: getcartitemsentity.products[index].id,
                            );
                          } else {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
                bottomNavigationBar: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.09,
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
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              "ل.س",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
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
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Text(
                              getcartitemsentity.totalPrice.toStringAsFixed(3),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SquareButton(
                          icon: PhosphorIcons.handshake(
                              PhosphorIconsStyle.regular),
                          text: "تأكيد الشراء",
                          onTap: () {
                            if (getcartitemsentity.products.isNotEmpty) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SendOrder();
                                  },
                                ),
                              );
                            } else {
                              Fluttertoast.showToast(
                                msg: "لا توجد منتجات لتأكيد شرائها",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.red,
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: SharedPreferencesUtils().getisDark() == true
                      ? Colors.grey.shade900
                      : Colors.white,
                  body: Center(
                    child: CircularProgressIndicator(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.mainColor
                          : Colors.white,
                    ),
                  ),
                ),
              );
            },
            initial: () {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: SharedPreferencesUtils().getisDark() == true
                      ? Colors.grey.shade900
                      : Colors.white,
                  body: Center(
                    child: CircularProgressIndicator(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.mainColor
                          : Colors.white,
                    ),
                  ),
                ),
              );
            },
            loading: () {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: SharedPreferencesUtils().getisDark() == true
                      ? Colors.grey.shade900
                      : Colors.white,
                  body: Center(
                    child: CircularProgressIndicator(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.mainColor
                          : Colors.white,
                    ),
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
