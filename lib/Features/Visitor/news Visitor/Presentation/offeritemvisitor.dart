import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/news%20Visitor/Presentation/Details%20Of%20Offer%20Visitor/detailsofoffervisitor.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class OfferItemVisitor extends StatelessWidget {
   String image;
  int index;
   OfferItemVisitor({required this.image,required this.index,super.key});

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailsOfOfferVisitor();
            },
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.188,
            left: MediaQuery.of(context).size.width * 0.29,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(0, 2.5),
                      blurRadius: 0.9,
                    ),
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: const Offset(0, -0.1),
                      blurRadius: 0.9,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                      PhosphorIcons.heart(PhosphorIconsStyle.fill),
                      color: ColorConstant.mainColor,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}