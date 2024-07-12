import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Vouchers/Presentation/Add%20Voucher/vourchertypes.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/field_phone.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/notesfield.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AddVoucher extends StatefulWidget {
  const AddVoucher({super.key});

  @override
  State<AddVoucher> createState() => _AddVoucherState();
}

class _AddVoucherState extends State<AddVoucher> {
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final GlobalKey<FormState> _phonenumberkey = GlobalKey<FormState>();
  final TextEditingController _notesController = TextEditingController();
  String selectedVoucher = "";
  bool isSelectedVoucher = false;
  void _onVoucherSelected(String voucher) {
    setState(() {
      selectedVoucher = voucher;
      // ignore: avoid_print
      print(selectedVoucher);
      isSelectedVoucher = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == false
            ? Colors.white
            : Colors.grey.shade900,
        appBar: SimpleTopBar(
          name: "إنشاء قسيمة",
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 26,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                ),
              ),
            ),
          ],
          isBottom: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8, right: 12, left: 12),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "أنشئ القسيمة التي ترغب بها من خلال اختيار حجم القسيمة التي تريدها ثم قم بإدخال رقم الشخص الذي تريد إرسال القسيمة له",
                    maxLines: 4,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade900
                          : Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        VourcherTypes(
                          number: 150,
                          selectedVoucher: selectedVoucher,
                          onSelected: _onVoucherSelected,
                        ),
                        VourcherTypes(
                          number: 250,
                          selectedVoucher: selectedVoucher,
                          onSelected: _onVoucherSelected,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        VourcherTypes(
                          number: 100,
                          selectedVoucher: selectedVoucher,
                          onSelected: _onVoucherSelected,
                        ),
                        VourcherTypes(
                          number: 200,
                          selectedVoucher: selectedVoucher,
                          onSelected: _onVoucherSelected,
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade300
                      : Colors.grey.shade800,
                  thickness: 2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Form(
                  key: _phonenumberkey,
                  child: FieldPhone(
                    phonenumbercontroller: _phonenumbercontroller,
                    fieldName: "رقم الهاتف",
                    typeKey: TextInputType.phone,
                    pass: false,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return "هذا الحقل مطلوب";
                      } else if (value.length < 9) {
                        return "رقم الهاتف يجب ان يكون على الأقل 9 أرقام";
                      } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return "هذا الرقم غير صالح";
                      }
                      return null;
                    },
                  ),
                ),
                Divider(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade300
                      : Colors.grey.shade800,
                  thickness: 2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "ملاحظات إضافية",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                NotesField(
                  notesController: _notesController,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    if (_phonenumberkey.currentState!.validate()) {
                      if (selectedVoucher.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "الرجاء أختيار نوع قسيمة واحد",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                        );
                      } else {}
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorConstant.mainColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "تأكيد",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Icon(
                          PhosphorIcons.paperPlaneTilt(
                              PhosphorIconsStyle.regular),
                          size: 24,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
