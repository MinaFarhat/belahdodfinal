import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});
  static List<String> cities = [
    "دمشق",
    "حلب",
    "حمص",
    "ريف دمشق",
    "إدلب",
    "حماه",
    "اللاذقية",
    "طرطوس",
    "السويداء",
    "درعا",
    "القنيطرة",
    "دير الزور",
    "الحسكة",
    "الرقة",
  ];

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _numberController = TextEditingController();

  final TextEditingController _regionController = TextEditingController();

  static String? value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleTopBar(
          name: "إعدادات الحساب",
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
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
          isBottom: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "الأسم",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  child: TextFormField(
                    controller: _nameController,
                    cursorColor: Colors.grey.shade900,
                    cursorHeight: 20,
                    cursorRadius: const Radius.circular(50),
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Mina Farhat",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(
                        PhosphorIcons.pencil(PhosphorIconsStyle.regular),
                        size: 24,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Divider(
                  color: Colors.grey.shade500,
                  thickness: 1.5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "رقم الهاتف",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  child: TextFormField(
                    controller: _numberController,
                    cursorColor: Colors.grey.shade900,
                    cursorHeight: 20,
                    cursorRadius: const Radius.circular(50),
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "0987654321",
                      hintTextDirection: TextDirection.rtl,
                      hintStyle: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Icon(
                        PhosphorIcons.pencil(PhosphorIconsStyle.regular),
                        size: 24,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Divider(
                  color: Colors.grey.shade500,
                  thickness: 1.5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "العنوان",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 50,
                      child: TextFormField(
                        controller: _regionController,
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        cursorHeight: 20,
                        cursorRadius: const Radius.circular(50),
                        cursorColor: Colors.grey.shade900,
                        keyboardType: TextInputType.streetAddress,
                        textDirection: TextDirection.rtl,
                        enableSuggestions: true,
                        decoration: InputDecoration(
                          hintText: "دويلعة/ركن أبو عطاف",
                          hintTextDirection: TextDirection.rtl,
                          hintStyle: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade500,
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade500,
                              width: 1.5,
                            ),
                          ),
                          disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade500,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade500,
                              width: 1.5,
                            ),
                          ),
                          prefixIcon: Icon(
                            PhosphorIcons.pencil(PhosphorIconsStyle.regular),
                            size: 24,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: DropdownButtonFormField(
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        menuMaxHeight: 300,
                        hint: Text(
                          "دمشق",
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        iconSize: 30,
                        isExpanded: true,
                        alignment: Alignment.center,
                        value: value,
                        items: AccountSettings.cities.map((String city) {
                          return DropdownMenuItem(
                            enabled: true,
                            value: city,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  city,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            value = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                _nameController.text.isNotEmpty ||
                        _numberController.text.isNotEmpty ||
                        _regionController.text.isNotEmpty ||
                        value != null
                    ? InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: ColorConstant.mainColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "إرسال",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              Icon(
                                PhosphorIcons.paperPlane(
                                    PhosphorIconsStyle.regular),
                                size: 24,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
