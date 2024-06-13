import 'dart:io';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class ChoosePhoto extends StatefulWidget {
  const ChoosePhoto({super.key});

  @override
  State<ChoosePhoto> createState() => _ChoosePhotoState();
}

class _ChoosePhotoState extends State<ChoosePhoto> {
  // final picker = ImagePicker();
  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.darkColor,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return const Mynavbar();
              }));
            },
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.012,
                right: MediaQuery.of(context).size.width * 0.045,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "تخطي",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
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
                    : const AssetImage("assets/images/user.png")
                        as ImageProvider,
                backgroundColor: Colors.white,
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.11,
                top: MediaQuery.of(context).size.height * 0.344,
                child: GestureDetector(
                  onTap: () {
                    // _buildImageContainer();
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

//   Future<void> _pickImage(ImageSource source) async {
//     final pickedImage = await ImagePicker().pickImage(source: source);
//     if (pickedImage != null) {
//       setState(() {
//         _selectedImage = File(pickedImage.path);
//       });
//     }
//   }

//   Widget _buildImageContainer() {
//     return GestureDetector(
//       onTap: () {
//         showModalBottomSheet(
//           context: context,
//           builder: (BuildContext context) {
//             return SafeArea(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   ListTile(
//                     leading: const Icon(
//                       Icons.photo_library,
//                       color: Color(0xFF3467D2),
//                       size: 30,
//                     ),
//                     // title: Text(
//                     //   'Choose from Gallery',
//                     //   style: GoogleFonts.lora(
//                     //     textStyle: const TextStyle(
//                     //       fontSize: 14,
//                     //       color: Color(0xFF3467D2),
//                     //       fontWeight: FontWeight.w600,
//                     //     ),
//                     //   ),
//                     // ),
//                     onTap: () {
//                       _pickImage(ImageSource.gallery);
//                       Navigator.pop(context);
//                     },
//                   ),
//                   ListTile(
//                     leading: const Icon(
//                       Icons.camera_alt,
//                       color: Color(0xFF3467D2),
//                       size: 30,
//                     ),
//                     // title: Text(
//                     //   'Take a Photo',
//                     //   style: GoogleFonts.lora(
//                     //     textStyle: const TextStyle(
//                     //       fontSize: 14,
//                     //       color: Color(0xFF3467D2),
//                     //       fontWeight: FontWeight.w600,
//                     //     ),
//                     //   ),
//                     // ),
//                     onTap: () {
//                       _pickImage(ImageSource.camera);
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 35),
//         child: Container(
//           height: 120,
//           width: 250,
//           decoration: BoxDecoration(
//             color: Colors.grey[200],
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           // child: _selectedImage != null
//           //     ? ClipRRect(
//           //         borderRadius: BorderRadius.circular(8.0),
//           //         child: Image.file(
//           //           _selectedImage!,
//           //           fit: BoxFit.cover,
//           //         ),
//           //       )
//           //     : const Icon(
//           //         Icons.add_photo_alternate,
//           //         size: 40,
//           //         color: Color(0xFF3467D2),
//           //       ),
//         ),
//       ),
//     );
//   }
}
