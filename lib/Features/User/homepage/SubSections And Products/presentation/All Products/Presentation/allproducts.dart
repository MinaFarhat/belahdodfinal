import 'package:flutter/material.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Presentation/productItem.dart';

// ignore: must_be_immutable
class AllProducts extends StatelessWidget {
  AllProducts({
    required this.sectionId,
    super.key,
  });
  int sectionId;

  List<Map<String, dynamic>> allProducts = [
    {
      "image": "assets/images/book1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/book2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/book3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/book4.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool4.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game4.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool4.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game4.png",
      "isFavorite": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
        child: allProducts.isNotEmpty
            ? GridView.builder(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.13,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: allProducts.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    image: allProducts[index]["image"],
                    isFavorite: allProducts[index]["isFavorite"],
                    sectionId: sectionId,
                  );
                },
              )
            : const Center(
                child: Text(
                  "لا توجد منتجات بعد في هذا القسم",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
