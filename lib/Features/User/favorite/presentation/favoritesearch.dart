import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class FavoriteSearch extends StatelessWidget {
  const FavoriteSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(),
          leadingWidth: 0,
          actions: [
            IconButton(
              icon: Icon(
                PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                size: 26,
                color: ColorConstant.darkColor,
              ),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
          title: TextFormField(
            textAlign: TextAlign.right,
            cursorColor: ColorConstant.mainColor,
            cursorHeight: 22,
            cursorRadius: const Radius.circular(50),
            textInputAction: TextInputAction.search,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorConstant.mainColor,
            ),
            decoration: InputDecoration(
              hintText: '...إبحث',
              hintStyle: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              border: InputBorder.none,
            ),
          ),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Text('No Results'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
