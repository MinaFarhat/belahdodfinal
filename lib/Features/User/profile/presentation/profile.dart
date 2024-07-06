import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';

import 'Componentes of Profile/bottompartprofile.dart';
import 'Componentes of Profile/middlepartprofile.dart';
import 'Componentes of Profile/toppartprofile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleTopBar(
          name: "الملف الشخصي",
          leading: Container(),
          action: const [],
          isBottom: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              const TopPartProfile(
                imageProfile: "assets/images/User-avatar.png",
                nameUser: "Mina Farhat",
                location: "دمشق/دويلعة/ركن أبو عطاف/دخلة بن كولومبوس",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              const MiddlePartProfile(
                numberOfOrder: 50,
                numOfPoints: 250,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const BottomPartProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
