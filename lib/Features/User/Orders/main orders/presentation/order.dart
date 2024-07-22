import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../../Core/constant/colors_constant.dart';
import 'orderitem.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  void initState() {
    context.read<GetOrdersCubit>().getOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          name: "الطلبات",
          leading: Container(),
          // InkWell(
          //   overlayColor: WidgetStateProperty.all(Colors.transparent),
          //   onTap: () {
          //     showDialog(
          //       context: context,
          //       builder: (_) {
          //         return const SearchDialog();
          //       },
          //     );
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16),
          //     child: Icon(
          //       PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.regular),
          //       color: SharedPreferencesUtils().getisDark() == false
          //           ? ColorConstant.mainColor
          //           : Colors.white,
          //       size: 26,
          //     ),
          //   ),
          // ),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
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
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: BlocConsumer<GetOrdersCubit, GetOrdersState>(
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
                success: (getordersentity) {
                  if (getordersentity.orders.isNotEmpty) {
                    return GridView.builder(
                      itemCount: getordersentity.orders.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 5,
                        mainAxisExtent: 220,
                        childAspectRatio: 4 / 4.5,
                      ),
                      itemBuilder: ((context, index) {
                        return OrderItem(
                          orderId: getordersentity.orders[index].orderId,
                          date: getordersentity.orders[index].orderDate,
                          stateDialog:
                              getordersentity.orders[index].orderStatus,
                          totalPrice: getordersentity.orders[index].totalCost,
                        );
                      }),
                    );
                  } else {
                    return Center(
                      child: Text(
                        "لاتوجد طلبيات حتى الأن",
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
      ),
    );
  }
}
