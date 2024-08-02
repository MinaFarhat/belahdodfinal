import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class InformationVisitor extends StatefulWidget {
  const InformationVisitor({super.key});

  @override
  State<InformationVisitor> createState() => _InformationVisitorState();
}

class _InformationVisitorState extends State<InformationVisitor> {
  bool exp = false;
  String text =
      "( وقل اعملوا فسيرى الله عملكم ورسوله والمؤمنون ) في عام 1993 وبتوفيق من الله عز وجل ثم رضا الوالدين تم تأسيس دار الحافظ للطباعة والإنتاج والنشر والتوزيع والتي اتخذت من دمشق مقراً لها ، ومنذ بداية نشوئها وضعت نصب عينيها خدمة المجتمع العربي في شتى مجالات العلم والمعرفة ، واستمر ذلك المشروع بالنمو والتطور إلى أن اتخذت تلك السفينة المبحرة في عالم الثقافة وميادين العلم اتجاهاً متخصصاً في مجال الطفل وتنمية ثقافته ، وذلك انطلاقاً من وعيها بأن كل أمة طموحة نحو الرقي والتقدم تصب جل اهتمامها بالطفل وثقافته ، فكان العمل الدؤوب في مجال النشر الورقي والالكتروني في كل ما يخص الطفل وإعداد مستقبل ثقافي مشرق معتمد على ما توصل إليه العلم في عصرنا الحاضر ، مع المحافظة على ما تمتلكه أمتنا من إرث حضاري وثقافي ضخم";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFEC0E0E),
                Color(0xFFE0E40E),
                Color(0xFF10D417),
                Color(0xFF0D75F0),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 8, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      PhosphorIcons.arrowRight(PhosphorIconsStyle.bold),
                      size: 26,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    "دار الحافظ للطباعة و الإنتاج والنشر والتوزيع",
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "عن دار الحافظ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "بسم الله الرحمن الرحيم",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: exp
                            ? text.length.toDouble() / 2.15
                            : MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.96,
                        child: Text(
                          "( وقل اعملوا فسيرى الله عملكم ورسوله والمؤمنون ) في عام 1993 وبتوفيق من الله عز وجل ثم رضا الوالدين تم تأسيس دار الحافظ للطباعة والإنتاج والنشر والتوزيع والتي اتخذت من دمشق مقراً لها ، ومنذ بداية نشوئها وضعت نصب عينيها خدمة المجتمع العربي في شتى مجالات العلم والمعرفة ، واستمر ذلك المشروع بالنمو والتطور إلى أن اتخذت تلك السفينة المبحرة في عالم الثقافة وميادين العلم اتجاهاً متخصصاً في مجال الطفل وتنمية ثقافته ، وذلك انطلاقاً من وعيها بأن كل أمة طموحة نحو الرقي والتقدم تصب جل اهتمامها بالطفل وثقافته ، فكان العمل الدؤوب في مجال النشر الورقي والالكتروني في كل ما يخص الطفل وإعداد مستقبل ثقافي مشرق معتمد على ما توصل إليه العلم في عصرنا الحاضر ، مع المحافظة على ما تمتلكه أمتنا من إرث حضاري وثقافي ضخم",
                          maxLines: 30,
                          textDirection: TextDirection.rtl,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          setState(() {
                            exp = !exp;
                          });
                        },
                        child: Text(
                          exp ? "إغلاق القراءة" : "متابعة القراءة",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.007,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "مكان دار الحافظ",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      Icon(
                        PhosphorIcons.mapPin(PhosphorIconsStyle.regular),
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                  ),
                  titleSubtitle(":المقر", "دمشق/سوريا", context),
                  titleSubtitle(
                      ":المركز الرئيسي", "الحلبوني/شارع المكتبات", context),
                  titleSubtitle(":الإدارة العامة", "الحلبوني", context),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.008,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "معلومات التواصل",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      Icon(
                        PhosphorIcons.headset(PhosphorIconsStyle.regular),
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                  ),
                  titleSubtitle(":الهاتف", "0112232366", context),
                  titleSubtitle(":الهاتف", "0112241981", context),
                  Padding(
                    padding: const EdgeInsets.only(right: 4, top: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "P.O.Box:",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        const Text(
                          "31453",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        const Text(
                          ":ص.ب",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  titleSubtitle(
                      ":البريد الإلكتروني", "daralhafez@hotmail.com", context),
                  titleSubtitle(
                      ":البريد الإلكتروني", "info@daralhafez.net", context),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget titleSubtitle(String title, String subtitle, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.01,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
