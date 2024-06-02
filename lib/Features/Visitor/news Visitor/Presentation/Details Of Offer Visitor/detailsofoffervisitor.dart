import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/news%20Visitor/Presentation/Details%20Of%20Offer%20Visitor/pricesectionvisitor.dart';
import 'package:belahododfinal/Features/Visitor/news%20Visitor/Presentation/offeritemvisitor.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class DetailsOfOfferVisitor extends StatelessWidget {
  DetailsOfOfferVisitor({super.key});
  List<Map<String, dynamic>> offerProducts = [
    {
      "image": "assets/images/tool1.png",
    },
    {
      "image": "assets/images/tool2.png",
    },
    {
      "image": "assets/images/tool3.png",
    },
    {
      "image": "assets/images/tool4.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.shadowColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/offer1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 24,
                      top: 8,
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.045,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.7),
                          ),
                          child: Center(
                            child: Icon(
                              PhosphorIcons.arrowRight(
                                  PhosphorIconsStyle.regular),
                              size: 28,
                              color: ColorConstant.darkColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "مرحباً في المدرسة",
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorConstant.darkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: Text(
                        "اشتري مجموعة كاملة من الأدوات المدرسية والقرطاسية بسعر منافس",
                        textDirection: TextDirection.rtl,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorConstant.hintTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ":منتجات العرض",
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorConstant.darkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.26,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: offerProducts.length,
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: OfferItemVisitor(
                        image: offerProducts[index]['image'],
                        index: index,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.17,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(0, -2.5),
                blurRadius: 0.9,
              ),
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(0, 0),
                blurRadius: 0.9,
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '14 يوماً',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: ColorConstant.darkColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.012,
                        ),
                        Text(
                          ':مدة العرض',
                          style: TextStyle(
                            color: ColorConstant.hintTextColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const PriceSectionVisitor(
                      originalPrice: 300.000,
                      discountedPrice: 200.000,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        ColorConstant.mainColor,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "إنشاء حساب",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.mainColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
