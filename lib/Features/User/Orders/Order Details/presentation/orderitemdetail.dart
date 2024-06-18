import 'package:belahododfinal/Features/Widgets/fine_of_order.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderItemDetails extends StatelessWidget {
  String image;
  String name;
  int price;
  int quantity;
  OrderItemDetails({
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
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
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
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
