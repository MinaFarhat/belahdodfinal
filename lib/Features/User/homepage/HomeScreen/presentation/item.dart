import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class Item extends StatefulWidget {
  String image;
  int index;
  int productID;

  Item({
    required this.image,
    required this.index,
    required this.productID,
    super.key,
  });

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        onTap: () {
          if (widget.index == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsBook(
                  productID: widget.productID,
                ),
              ),
            );
          } else if (widget.index == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsGame(
                  productID: widget.productID,
                ),
              ),
            );
          } else if (widget.index == 2) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsStationery(
                  productID: widget.productID,
                ),
              ),
            );
          } else if (widget.index == 3) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsQurans(
                  productID: widget.productID,
                ),
              ),
            );
          } else if (widget.index == 4 || widget.index > 4) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsBase(
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
                color: Colors.white,
                 image: DecorationImage(
                  image: CachedNetworkImageProvider(widget.image),
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
            Positioned(
              top: MediaQuery.of(context).size.height * 0.160,
              left: MediaQuery.of(context).size.width * 0.29,
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  if (isFavorite == false) {
                    setState(() {
                      isFavorite = true;
                    });
                    Fluttertoast.showToast(
                      msg: "تم إضافة المنتج الى القائمة المفضلة",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: ColorConstant.mainColor,
                    );

                    context
                        .read<AddtofavoriteCubit>()
                        .addtofavorites(widget.productID);
                  } else {
                    setState(() {
                      isFavorite = false;
                    });
                    Fluttertoast.showToast(
                      msg: "تم إزالة المنتج من القائمة المفضلة",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: ColorConstant.mainColor,
                    );

                    context
                        .read<AddtofavoriteCubit>()
                        .addtofavorites(widget.productID);
                  }
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
                  child: isFavorite == false
                      ? CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.regular),
                              color: ColorConstant.mainColor,
                              size: 25,
                            ),
                          ),
                        )
                      : CircleAvatar(
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
      ),
    );
  }
}
