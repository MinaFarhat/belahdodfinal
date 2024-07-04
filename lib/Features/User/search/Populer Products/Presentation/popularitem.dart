// ignore_for_file: avoid_print

import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  final Map<String, dynamic> image1;
  final Map<String, dynamic> image2;
  final Map<String, dynamic> image3;
  final Map<String, dynamic> image4;
  final Map<String, dynamic> image5;
  final int listSize;
  final bool isEven;

  const PopularItem({
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.listSize,
    required this.isEven,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isEven ? _buildEvenLayout(context) : _buildOddLayout(context),
      ),
    );
  }

  List<Widget> _buildEvenLayout(BuildContext context) {
    return [
      _buildMainImage(context, image1),
      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      _buildSecondaryImages(context),
    ];
  }

  List<Widget> _buildOddLayout(BuildContext context) {
    return [
      _buildSecondaryImages(context),
      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      _buildMainImage(context, image1),
    ];
  }

  Widget _buildMainImage(BuildContext context, Map<String, dynamic> image) {
    return InkWell(
      onTap: () {
        if (image["productId"] == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBook(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsGame(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 3) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsStationery(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 4) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsQurans(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 5 || image["productId"] > 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBase(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.31,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image["image"]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildSecondaryImages(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildSecondaryImage(context, image2),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            _buildSecondaryImage(context, image3),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.007),
        Row(
          children: [
            _buildSecondaryImage(context, image4),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            _buildSecondaryImage(context, image5),
          ],
        ),
      ],
    );
  }

  Widget _buildSecondaryImage(
      BuildContext context, Map<String, dynamic> image) {
    return InkWell(
      onTap: () {
        if (image["productId"] == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBook(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsGame(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 3) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsStationery(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 4) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsQurans(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        } else if (image["productId"] == 5 || image["productId"] > 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBase(
                productID: image["sectionId"],
              ),
            ),
          );
          print(
              'Secondary image tapped: Product ID: ${image["productId"]}, Section ID: ${image["sectionId"]}');
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.283,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image["image"]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
