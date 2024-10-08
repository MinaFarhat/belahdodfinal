import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/signup.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_base.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_book.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_game.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_qurans.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_stationery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class ItemVisitor extends StatefulWidget {
  String image;
  int index;
  int productID;
  final int sectionId;
  ItemVisitor({
    required this.image,
    required this.index,
    required this.productID,
    required this.sectionId,
    super.key,
  });

  @override
  State<ItemVisitor> createState() => _ItemVisitorState();
}

class _ItemVisitorState extends State<ItemVisitor> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.sectionId == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBookVisitor(
                productID: widget.productID,
              ),
            ),
          );
        } else if (widget.sectionId == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsGameVisitor(
                productID: widget.productID,
              ),
            ),
          );
        } else if (widget.sectionId == 3) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsStationeryVisitor(
                productID: widget.productID,
              ),
            ),
          );
        } else if (widget.sectionId == 4) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsQuransVisitor(
                productID: widget.productID,
              ),
            ),
          );
        } else if (widget.sectionId == 5 || widget.sectionId > 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBaseVisitor(
                productID: widget.productID,
              ),
            ),
          );
        }
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: CachedNetworkImage(
              imageUrl: widget.image,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Container(
                color: Colors.white,
                child: Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.172,
            left: MediaQuery.of(context).size.width * 0.3,
            child: InkWell(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: MediaQuery.of(context).size.height * 0.26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 14,
                            right: 14,
                            left: 14,
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: ColorConstant.shadowColor,
                                radius: 22,
                                child: Center(
                                  child: Icon(
                                    PhosphorIcons.cookie(
                                      PhosphorIconsStyle.regular,
                                    ),
                                    color: ColorConstant.mainColor,
                                    size: 32,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.005,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: Center(
                                  child: Text(
                                    "لا يمكنك إضافة عناصر الى القائمة المفضلة والحصول على إشعارات من هذا العنصر اذا لم تقم بإنشاء حساب على التطبيق",
                                    maxLines: 10,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: ColorConstant.darkColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              InkWell(
                                overlayColor:
                                    WidgetStateProperty.all(Colors.transparent),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Signup();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.purpleAccent.shade400,
                                        Colors.blue,
                                      ],
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(2),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "إنشاء حساب",
                                        style: TextStyle(
                                          fontSize: 15,
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
                  },
                );
              },
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
                      PhosphorIcons.heart(PhosphorIconsStyle.regular),
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
