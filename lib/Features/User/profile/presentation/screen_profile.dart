import 'dart:io';

import 'package:belahododfinal/Features/User/Orders/main%20orders/presentation/order.dart';
import 'package:belahododfinal/Features/User/profile/presentation/profile_Settings_Screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  Future<String?> _loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('profile_image');
  }

  Future<void> _pickImage(BuildContext context, ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('profile_image', pickedFile.path);
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 140, right: 140, bottom: 70, top: 30),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70.0),
                  bottomRight: Radius.circular(70.0),
                ),
              ),
              child: Column(
                children: [
                  FutureBuilder<String?>(
                    future: _loadImage(),
                    builder: (context, snapshot) {
                      File? image;
                      if (snapshot.hasData && snapshot.data != null) {
                        image = File(snapshot.data!);
                      }
                      return Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: image != null
                                ? FileImage(image)
                                : const AssetImage('assets/images/pic.jpg')
                                    as ImageProvider,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  context: context,
                                  builder: (context) => BottomSheet(
                                    onClosing: () {},
                                    builder: (context) => Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          leading:
                                              const Icon(Icons.photo_library),
                                          title: const Text('اختيار من المعرض'),
                                          onTap: () {
                                            _pickImage(
                                                context, ImageSource.gallery);
                                          },
                                        ),
                                        ListTile(
                                          leading: const Icon(Icons.camera_alt),
                                          title: const Text('التقاط صورة'),
                                          onTap: () {
                                            _pickImage(
                                                context, ImageSource.camera);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: const CircleAvatar(
                                radius: 15,
                                child: Icon(Icons.add, size: 20),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'مينا فرحات',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '200',
                    style: TextStyle(color: Colors.purple[200], fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'الإجراءات السريعة',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Orders();
                                },
                              ),
                            );
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.grey),
                            ),
                            leading: const Icon(Icons.receipt_long),
                            title: const Text(
                              'الطلبات',
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.grey),
                            ),
                            leading: const Icon(Icons.bookmark),
                            title: const Text(
                              'القسائم',
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'الإعدادات والخصوصية',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: StatefulBuilder(
                      builder: (context, setState) {
                        bool _isNightMode = false;
                        bool _isEnglish = false;
                        return Column(
                          children: [
                            SwitchListTile(
                              title: const Text(
                                'الوضع الليلي',
                                textDirection: TextDirection.rtl,
                              ),
                              secondary: const Icon(Icons.nightlight_round),
                              value: _isNightMode,
                              onChanged: (bool value) {
                                setState(() {
                                  _isNightMode = value;
                                });
                              },
                            ),
                            ListTile(
                              title: const Text(
                                'لغة التطبيق',
                                textDirection: TextDirection.rtl,
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text('EN'),
                                  Switch(
                                    value: _isEnglish,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _isEnglish = value;
                                      });
                                    },
                                  ),
                                  const Text('AR'),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileSettingsScreen(),
                                  ),
                                );
                              },
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: const BorderSide(color: Colors.grey),
                                ),
                                leading: const Icon(Icons.account_circle),
                                title: const Text(
                                  'إعدادات الحساب',
                                  textDirection: TextDirection.rtl,
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
          ],
        ),
      ),
    );
  }
}
