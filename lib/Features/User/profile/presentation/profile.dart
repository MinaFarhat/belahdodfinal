import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
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
        backgroundColor: SharedPreferencesUtils().getisDark() == false
            ? Colors.white
            : Colors.grey.shade900,
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
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              const TopPartProfile(
                imageProfile: "assets/images/User-avatar.png",
                nameUser: "Mina Farhat",
                location: "دمشق/دويلعة/ركن أبو عطاف/دخلة بن كولومبوس",
                points: "250",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              MiddlePartProfile(
                numberOfOrder: 50,
                numOfVouchers: 5,
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
