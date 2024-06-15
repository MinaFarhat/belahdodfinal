import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/presentation/homepage.dart';
import 'package:belahododfinal/Features/User/news/presentation/news.dart';
import 'package:belahododfinal/Features/User/profile/presentation/profile.dart';
import 'package:belahododfinal/Features/User/search/presentation/search.dart';
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
    HomePage(),
    const NewsPage(),
    NotificationsPage(),
    Search(),
    const Profile()
  ];
  int curentindex = 0;
  @override
  void initState() {
    super.initState();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
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
          barColor: ColorConstant.mainColor,
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
                    color: Colors.white,
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
                    color: Colors.white,
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
                    color: Colors.white,
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
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      curentindex = 4;
                    });
                  },
                  icon: Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: ColorConstant.mainColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: curentindex == 4
                            ? Colors.white
                            : Colors.transparent,
                        width: 2,
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/User-avatar.png"),
                        fit: BoxFit.cover,
                      ),
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
