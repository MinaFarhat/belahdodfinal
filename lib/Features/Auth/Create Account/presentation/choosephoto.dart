import 'dart:io';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Auth/Login/presentation/login.dart';
import 'package:belahododfinal/Features/Auth/waitingscreen.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChoosePhoto extends StatefulWidget {
  const ChoosePhoto({super.key});

  @override
  State<ChoosePhoto> createState() => _ChoosePhotoState();
}

class _ChoosePhotoState extends State<ChoosePhoto> {
  final picker = ImagePicker();
  File? _selectedImage;
  @override
  void initState() {
    super.initState();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstant.darkColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: ColorConstant.darkColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _setSystemUIOverlayStyle();
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.darkColor,
      body: Column(
        children: [
          _selectedImage == null
              ? Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.012,
                    right: MediaQuery.of(context).size.width * 0.045,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        child: const Text(
                          "تخطي",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return WaitingScreen(
                                  screen: LogIn(),
                                  text: "...جارٍ حفظ المعلومات",
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.012,
                    right: MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.mainColor,
                          ),
                          child: const Center(
                            child: Text(
                              "حفظ",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const WaitingScreen(
                                  screen: Mynavbar(),
                                  text: "...جارٍ حفظ المعلومات",
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 180,
                backgroundImage: _selectedImage != null
                    ? FileImage(
                        _selectedImage!,
                      )
                    : const AssetImage("assets/images/User-avatar.png")
                        as ImageProvider,
                backgroundColor: Colors.white,
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.13,
                top: MediaQuery.of(context).size.height * 0.36,
                child: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'أختيار من المعرض',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ColorConstant.darkColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                  const SizedBox(width: 8.0),
                                  Icon(
                                    PhosphorIcons.images(
                                        PhosphorIconsStyle.regular),
                                    color: ColorConstant.mainColor,
                                    size: 30,
                                  ),
                                ],
                              ),
                              onTap: () {
                                _pickImage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                              contentPadding:
                                  const EdgeInsets.only(right: 16.0),
                            ),
                            ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'ألتقاط صورة',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ColorConstant.darkColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                  const SizedBox(width: 8.0),
                                  Icon(
                                    PhosphorIcons.aperture(
                                        PhosphorIconsStyle.regular),
                                    color: ColorConstant.mainColor,
                                    size: 30,
                                  ),
                                ],
                              ),
                              onTap: () {
                                _pickImage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                              contentPadding:
                                  const EdgeInsets.only(right: 16.0),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorConstant.mainColor,
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }
}
