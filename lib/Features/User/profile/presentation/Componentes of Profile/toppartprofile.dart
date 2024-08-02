import 'dart:io';

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Points/Presentation/points.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TopPartProfile extends StatefulWidget {
  const TopPartProfile({
    required this.imageProfile,
    required this.nameUser,
    required this.location,
    required this.points,
    super.key,
  });
  final String imageProfile;
  final String nameUser;
  final String location;
  final String points;
  @override
  State<TopPartProfile> createState() => _TopPartProfileState();
}

class _TopPartProfileState extends State<TopPartProfile> {
  final picker = ImagePicker();
  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: SharedPreferencesUtils().getisDark() == false
                  ? ColorConstant.mainColor
                  : ColorConstant.shadowColor,
              radius: 55,
              backgroundImage: _selectedImage == null
                  ? AssetImage(widget.imageProfile)
                  : FileImage(
                      File(_selectedImage!.path),
                    ),
            ),
            Positioned(
              bottom: 2,
              right: 1,
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
                            tileColor:
                                SharedPreferencesUtils().getisDark() == false
                                    ? Colors.white
                                    : Colors.grey.shade900,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'أختيار من المعرض',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? ColorConstant.darkColor
                                            : Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                                const SizedBox(width: 8.0),
                                Icon(
                                  PhosphorIcons.images(
                                      PhosphorIconsStyle.regular),
                                  color: SharedPreferencesUtils().getisDark() ==
                                          false
                                      ? ColorConstant.mainColor
                                      : Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                            onTap: () {
                              _pickImage(ImageSource.gallery);
                              Navigator.pop(context);
                            },
                            contentPadding: const EdgeInsets.only(right: 16.0),
                          ),
                          ListTile(
                            tileColor:
                                SharedPreferencesUtils().getisDark() == false
                                    ? Colors.white
                                    : Colors.grey.shade900,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ألتقاط صورة',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? ColorConstant.darkColor
                                            : Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                                const SizedBox(width: 8.0),
                                Icon(
                                  PhosphorIcons.aperture(
                                      PhosphorIconsStyle.regular),
                                  color: SharedPreferencesUtils().getisDark() ==
                                          false
                                      ? ColorConstant.mainColor
                                      : Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                            onTap: () {
                              _pickImage(ImageSource.camera);
                              Navigator.pop(context);
                            },
                            contentPadding: const EdgeInsets.only(right: 16.0),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.09,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                    boxShadow: [
                      BoxShadow(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black.withOpacity(0.4)
                            : Colors.white.withOpacity(0.4),
                        offset: SharedPreferencesUtils().getisDark() == false
                            ? const Offset(0, 1.5)
                            : const Offset(0, 0.1),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      PhosphorIcons.aperture(PhosphorIconsStyle.regular),
                      color: SharedPreferencesUtils().getisDark() == false
                          ? const Color(0xFFD90E94)
                          : Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.016,
        ),
        Text(
          widget.nameUser,
          style: TextStyle(
            color: SharedPreferencesUtils().getisDark() == false
                ? Colors.black
                : Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    widget.location,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade900
                          : Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                Icon(
                  PhosphorIcons.navigationArrow(PhosphorIconsStyle.bold),
                  color: SharedPreferencesUtils().getisDark() == false
                      ? ColorConstant.mainColor
                      : ColorConstant.shadowColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const PointsScreen();
                },
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "نقطة",
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                widget.points,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Icon(
                PhosphorIcons.currencyEth(PhosphorIconsStyle.regular),
                color: SharedPreferencesUtils().getisDark() == false
                    ? ColorConstant.mainColor
                    : ColorConstant.shadowColor,
              ),
            ],
          ),
        ),
      ],
    );
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
