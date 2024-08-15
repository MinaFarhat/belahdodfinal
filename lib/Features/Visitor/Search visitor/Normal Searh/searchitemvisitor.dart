import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_base.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_book.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_game.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_qurans.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_stationery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchItemVisitor extends StatelessWidget {
  final int productId;
  final int sectionId;
  final String productImage;
  final String productName;
  const SearchItemVisitor({
    required this.productId,
    required this.sectionId,
    required this.productImage,
    required this.productName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        if (sectionId == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBookVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsGameVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 3) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsStationeryVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 4) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsQuransVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 5 || sectionId > 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBaseVisitor(
                productID: productId,
              ),
            ),
          );
        }
      },
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.2,
            child: CachedNetworkImage(
              imageUrl: productImage,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Text(
              productName,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
