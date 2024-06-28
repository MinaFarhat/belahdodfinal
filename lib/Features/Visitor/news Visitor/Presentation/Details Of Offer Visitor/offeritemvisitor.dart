import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferItemVisitor extends StatelessWidget {
  String image;
  int index;
  OfferItemVisitor({
    required this.image,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
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
    );
  }
}
