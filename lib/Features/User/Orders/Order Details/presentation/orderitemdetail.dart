// ignore_for_file: use_build_context_synchronously

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/fine_of_order.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Order Details Cubit/order_details_cubit.dart';

class OrderItemDetails extends StatelessWidget {
  final int productId;
  final int sectionId;
  final String image;
  final String name;
  final int price;
  final int quantity;
  final int orderId;
  const OrderItemDetails({
    required this.productId,
    required this.sectionId,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
    required this.orderId,
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
                    productID: productId,
                  ),
                ),
              )
              .then((_) =>
                  context.read<OrderDetailsCubit>().orderDetails(orderId));
        } else if (sectionId == 2) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsGame(
                    productID: productId,
                  ),
                ),
              )
              .then((_) =>
                  context.read<OrderDetailsCubit>().orderDetails(orderId));
        } else if (sectionId == 3) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsStationery(
                    productID: productId,
                  ),
                ),
              )
              .then((_) =>
                  context.read<OrderDetailsCubit>().orderDetails(orderId));
        } else if (sectionId == 4) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsQurans(
                    productID: productId,
                  ),
                ),
              )
              .then((_) =>
                  context.read<OrderDetailsCubit>().orderDetails(orderId));
        } else if (sectionId == 5 || sectionId > 5) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsBase(
                    productID: productId,
                  ),
                ),
              )
              .then((_) =>
                  context.read<OrderDetailsCubit>().orderDetails(orderId));
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: SharedPreferencesUtils().getisDark() == false
                ? Colors.grey.shade200
                : Colors.grey.shade800,
          ),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.41,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.grey.shade400,
                ),
                child: CachedNetworkImage(
                  imageUrl: image,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
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
                  errorWidget: (context, url, error) => Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.41,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.41,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FineOfOrder(
                    text: "الأسم",
                    paramter: name,
                    isQuantity: false,
                    isDetail: true,
                  ),
                  FineOfOrder(
                    text: "السعر",
                    paramter: price,
                    isQuantity: false,
                    isDetail: true,
                  ),
                  FineOfOrder(
                    text: "الكمية",
                    paramter: quantity,
                    isQuantity: true,
                    isDetail: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
