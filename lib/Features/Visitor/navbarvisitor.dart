import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/Presentation/homepagevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Profile/Presentation/profilevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Search%20visitor/Presentation/searchvisitor.dart';
import 'package:belahododfinal/Features/Visitor/news%20Visitor/Presentation/newsvisitor.dart';
import 'package:belahododfinal/Features/Visitor/note%20Visitor/Presentation/notificationvisitor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Mynavbarvisitor extends StatefulWidget {
  const Mynavbarvisitor({super.key});

  @override
  State<Mynavbarvisitor> createState() => _MynavbarvisitorState();
}

class _MynavbarvisitorState extends State<Mynavbarvisitor> {
  List screens = [
    HomePageVisitor(),
    const NewsPageVisitor(),
    const NotificationsPageVisitor(),
    const SearchVisitor(),
    const ProfileVisitor()
  ];
  int curentindex = 0;
  @override
  Widget build(BuildContext context) {
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
                        image: AssetImage("assets/images/user.png"),
                        fit: BoxFit.scaleDown,
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
