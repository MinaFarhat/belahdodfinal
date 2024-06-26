import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

class NotesField extends StatelessWidget {
  const NotesField({
    required this.notesController,
    super.key,
  });
  final TextEditingController notesController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.17,
      child: TextFormField(
        controller: notesController,
        keyboardType: TextInputType.multiline,
        maxLines: 10,
        cursorColor: ColorConstant.mainColor,
        cursorHeight: 23,
        cursorRadius: const Radius.circular(50),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: ColorConstant.darkColor,
        ),
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstant.shadowColor,
          hintText: "أكتب...",
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF898787),
          ),
          hintTextDirection: TextDirection.rtl,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
