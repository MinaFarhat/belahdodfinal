import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';

class OfferItems extends StatelessWidget {
  final String image;
  final int index;
  final int productId;
  final int sectionId;
  final int minimumquantity;

  const OfferItems({
    required this.image,
    required this.index,
    required this.productId,
    required this.sectionId,
    required this.minimumquantity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToDetails(context);
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              image: DecorationImage(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 22,
            top: 0,
            child: CustomPaint(
              size: const Size(30, 40),
              painter: BookmarkPainter(),
            ),
          ),
          Positioned(
            left: 21,
            top: 0,
            child: SizedBox(
              width: 30,
              height: 40,
              child: Center(
                child: Text(
                  minimumquantity.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigateToDetails(BuildContext context) {
    if (sectionId == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsBook(productID: productId),
        ),
      );
    } else if (sectionId == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsGame(productID: productId),
        ),
      );
    } else if (sectionId == 3) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsStationery(productID: productId),
        ),
      );
    } else if (sectionId == 4) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsQurans(productID: productId),
        ),
      );
    } else if (sectionId == 5 || sectionId > 5) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => DetailsBase(productID: productId),
        ),
      );
    }
  }
}

class BookmarkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = SharedPreferencesUtils().getisDark() == false
          ? ColorConstant.mainColor
          : ColorConstant.shadowColor
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 10);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height - 10);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
