import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/presentation/homepage.dart';
import 'package:belahododfinal/Features/User/news/presentation/updates.dart';
import 'package:belahododfinal/Features/User/profile/presentation/profile.dart';
import 'package:belahododfinal/Features/User/search/Normal%20Search/Presentation/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'note/presentation/notifications.dart';

class Mynavbar extends StatefulWidget {
  const Mynavbar({super.key});

  @override
  State<Mynavbar> createState() => _MynavbarState();
}

class _MynavbarState extends State<Mynavbar> {
  List screens = [
    const HomePage(),
    const Updates(),
    const NotificationsPage(),
    const Search(),
    const Profile()
  ];
  int curentindex = 0;

  void _setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SharedPreferencesUtils().getisDark() == false
          ? SystemUiOverlayStyle.light.copyWith(
              systemNavigationBarColor: Colors.white,
              systemNavigationBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              systemNavigationBarColor: Colors.grey.shade900,
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.grey.shade900,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _setSystemUIOverlayStyle();
    return SafeArea(
      child: Scaffold(
        body: screens[curentindex],
        bottomNavigationBar: BottomBar(
          barColor: SharedPreferencesUtils().getisDark() == false
              ? ColorConstant.mainColor
              : Colors.white,
          width: MediaQuery.of(context).size.width * 0.85,
          borderRadius: BorderRadius.circular(18),
          body: (context, tabController) {
            return screens[curentindex];
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      curentindex = 0;
                    });
                  },
                  icon: Icon(
                    curentindex == 0
                        ? PhosphorIcons.house(PhosphorIconsStyle.fill)
                        : PhosphorIcons.house(PhosphorIconsStyle.regular),
                    size: 28,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      curentindex = 1;
                    });
                  },
                  icon: Icon(
                    curentindex == 1
                        ? PhosphorIcons.cloud(PhosphorIconsStyle.fill)
                        : PhosphorIcons.cloud(PhosphorIconsStyle.regular),
                    size: 28,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      curentindex = 2;
                    });
                  },
                  icon: Icon(
                    curentindex == 2
                        ? PhosphorIcons.bell(PhosphorIconsStyle.fill)
                        : PhosphorIcons.bell(PhosphorIconsStyle.regular),
                    size: 28,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      curentindex = 3;
                    });
                  },
                  icon: Icon(
                    curentindex == 3
                        ? PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.fill)
                        : PhosphorIcons.magnifyingGlass(
                            PhosphorIconsStyle.regular),
                    size: 28,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      curentindex = 4;
                    });
                  },
                  icon: Icon(
                    curentindex == 4
                        ? PhosphorIcons.smiley(PhosphorIconsStyle.fill)
                        : PhosphorIcons.smiley(PhosphorIconsStyle.regular),
                    size: 28,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
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
