import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchVisitor extends StatefulWidget {
  const SearchVisitor({super.key});

  @override
  State<SearchVisitor> createState() => _SearchVisitorState();
}

class _SearchVisitorState extends State<SearchVisitor> {
  String? barcodeResult;

  Future<void> scanBarcode() async {
    try {
      var result = await BarcodeScanner.scan();
      setState(() {
        barcodeResult = result.rawContent;
        // ignore: avoid_print
        print("The barcode is: $barcodeResult");
      });
    } catch (e) {
      setState(() {
        barcodeResult = 'Failed to get barcode';
        // ignore: avoid_print
        print("Error: $e");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleTopBar(
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: scanBarcode,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: ColorConstant.mainColor,
                  child: Icon(
                    PhosphorIcons.barcode(PhosphorIconsStyle.regular),
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          isBottom: true,
          name: null,
        ),
        body: Center(
          child: Text(
            barcodeResult != null ? 'Barcode: $barcodeResult' : 'Scan a code',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
