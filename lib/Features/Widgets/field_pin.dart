import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FieldPins extends StatelessWidget {
  const FieldPins({super.key});
  
  static FocusNode pin2FocusNode = FocusNode();

  static FocusNode? pin3FocusNode = FocusNode();

  static FocusNode? pin4FocusNode = FocusNode();

  static var pin1Controller = TextEditingController();

  static var pin2Controller = TextEditingController();

  static var pin3Controller = TextEditingController();

  static var pin4Controller = TextEditingController();

  void initState() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        pinField(
          context: context,
          controller: pin1Controller,
          onchanged: (value) {
            nextField(value, pin2FocusNode);
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        pinField(
          context: context,
          controller: pin2Controller,
          focusnode: pin2FocusNode,
          onchanged: (value) {
            nextField(value, pin3FocusNode);
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        pinField(
          context: context,
          controller: pin3Controller,
          focusnode: pin3FocusNode,
          onchanged: (value) {
            nextField(value, pin4FocusNode);
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        pinField(
          context: context,
          controller: pin4Controller,
          focusnode: pin4FocusNode,
          onchanged: (value) {
            if (value.length == 1) {
              pin4FocusNode!.unfocus();
              // Then you need to check is the code is correct or not
            }
          },
        ),
      ],
    );
  }

  static void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  static Widget pinField({
    BuildContext? context,
    required TextEditingController? controller,
    required Function(String)? onchanged,
    FocusNode? focusnode,
  }) {
    return Container(
      height: MediaQuery.of(context!).size.height * 0.068,
      width: MediaQuery.of(context).size.width * 0.14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade300,
      ),
      child: TextFormField(
        focusNode: focusnode,
        controller: controller,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: ColorConstant.mainColor,
          height: 1.2,
        ),
        autofocus: true,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: ColorConstant.mainColor,
        cursorHeight: 22,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        onChanged: onchanged,
      ),
    );
  }
}
