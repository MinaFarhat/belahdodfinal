import 'dart:io';

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TopPartProfile extends StatefulWidget {
  const TopPartProfile({
    required this.imageProfile,
    required this.nameUser,
    required this.location,
    super.key,
  });
  final String imageProfile;
  final String nameUser;
  final String location;
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
              backgroundColor: ColorConstant.mainColor,
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
                            contentPadding: const EdgeInsets.only(right: 16.0),
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
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 1.5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      PhosphorIcons.aperture(PhosphorIconsStyle.regular),
                      color: const Color(0xFFD90E94),
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
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Text(
                widget.location,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              PhosphorIcons.navigationArrow(PhosphorIconsStyle.bold),
              color: ColorConstant.mainColor,
              size: 20,
            ),
          ],
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
