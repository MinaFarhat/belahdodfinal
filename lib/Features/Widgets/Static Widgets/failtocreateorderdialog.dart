import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class FialToCreateOrderDialog extends StatelessWidget {
  const FialToCreateOrderDialog({
    required this.message,
    required this.detailsOfFail,
    super.key,
  });
  final String message;
  final List<String> detailsOfFail;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: CircleAvatar(
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0015,
            ),
            Text(
              message,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.009,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: detailsOfFail.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          right: 12,
                        ),
                        child: Text(
                          detailsOfFail[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
