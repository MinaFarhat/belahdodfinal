import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGenerateVisitor extends StatelessWidget {
  const QRGenerateVisitor({
    required this.barcode,
    super.key,
  });
  final String barcode;
  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.shadowColor,
        appBar: SimpleTopBar(
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.black),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 26,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
          name: null,
          isBottom: false,
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, 3.5),
                  spreadRadius: 1.0,
                  blurRadius: 8.0,
                  blurStyle: BlurStyle.normal,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(0, -0.7),
                ),
              ],
            ),
            child: Center(
              child: QrImageView(
                data: barcode,
                version: QrVersions.auto,
                size: 230.0,
                backgroundColor: Colors.white,
                dataModuleStyle: QrDataModuleStyle(
                  color: ColorConstant.mainColor,
                  dataModuleShape: QrDataModuleShape.square,
                ),
                eyeStyle: QrEyeStyle(
                  color:  ColorConstant.mainColor,
                  eyeShape: QrEyeShape.square,
                ),
                semanticsLabel: barcode,
              ),
            ),
          ),
        ),
      ),
    );
 }
}
