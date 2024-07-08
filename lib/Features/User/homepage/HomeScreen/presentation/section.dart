import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/presentation/item.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/subsectionsandproducts.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class Section extends StatelessWidget {
  final String nameOfSection;
  final int sectionNumber;
  final List<ProductEntity> products;
  final List<int> productIDs;
  final int? sectionId;

  const Section({
    required this.nameOfSection,
    required this.sectionNumber,
    required this.products,
    required this.productIDs,
    required this.sectionId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, top: 16),
          child: InkWell(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            onTap: () {
              // print(sectionId);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SubSectionsAndProducts(
                      nameOfSection: nameOfSection,
                      sectionId: sectionId!,
                    );
                  },
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: CircleAvatar(
                    backgroundColor:
                        SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : Colors.white,
                    radius: 15,
                    child: Center(
                      child: Icon(
                        PhosphorIcons.arrowLeft(PhosphorIconsStyle.regular),
                        size: 22,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.white
                            : Colors.grey.shade900,
                      ),
                    ),
                  ),
                ),
                Text(
                  nameOfSection,
                  style: TextStyle(
                    fontSize: 18,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.grey.shade900
                        : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.24,
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, i) {
              String imageUrl = 'http://10.0.2.2:8000${products[i].image}';
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Item(
                  productID: productIDs[i],
                  image: imageUrl,
                  index: sectionNumber == 0
                      ? 0
                      : sectionNumber == 1
                          ? 1
                          : sectionNumber == 2
                              ? 2
                              : sectionNumber == 3
                                  ? 3
                                  : 4,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
