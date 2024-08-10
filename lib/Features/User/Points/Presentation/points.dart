import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/Points/Presentation/Replace%20the%20Points%20for%20Voucher/replacepoints.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PointsScreen extends StatelessWidget {
  const PointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              transform: const GradientRotation(50),
              colors: [
                Colors.deepPurple.shade700,
                ColorConstant.shadowColor,
              ],
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const SizedBox(height: 4.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  const Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'أصدقاء بلا حدود',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                        size: 26,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              buildSection(
                context: context,
                icon: Icons.info_outline,
                title: 'معلومات عن نظام أصدقاء بلا حدود',
                content:
                    'يساعد نظام أصدقاء بلا حدود على إعطاء العملاء نقاط ولاء من أجل استعمالها بعمليات الشراء أو الاستبدال داخل التطبيق.',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              buildSection(
                context: context,
                icon: Icons.help_outline,
                title: 'كيف تحصل على النقاط؟',
                content:
                    'يمكنك الحصول على نقاط إضافية بعد القيام بعدد معين من عمليات الشراء داخل التطبيق أو من خلال إنفاق مبلغ معين داخل التطبيق .',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              buildSection(
                context: context,
                icon: Icons.swap_horiz,
                title: 'استبدال النقاط',
                content:
                    'يمكنك استبدال النقاط للحصول على قسائم لأجل إهدائها أو استخدامها عند عملية الدفع لشراء منتج داخل التطبيق.',
                extraContent: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    buildButton(
                      context: context,
                      text: 'استبدال النقاط للحصول على قسيمة',
                      ontap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const ReplacePoints();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
                // extraContent: Column(
                //   children: [
                //     SizedBox(
                //       height: MediaQuery.of(context).size.height * 0.008,
                //     ),
                //     buildButton(
                //       context: context,
                //       text: 'استبدال النقاط للحصول على قسيمة',
                //       ontap: () {},
                //     ),
                //     SizedBox(
                //       height: MediaQuery.of(context).size.height * 0.016,
                //     ),
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width * 0.85,
                //       child: Text(
                //         "يمكنك استبدال النقاط للحصول على كود حسم يسمح لك بالحصول على حسم عند عملية شراء منتج داخل التطبيق.",
                //         textDirection: TextDirection.rtl,
                //         style: TextStyle(
                //           color: Colors.grey.shade900,
                //           fontSize: 17,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       height: MediaQuery.of(context).size.height * 0.008,
                //     ),
                //     buildButton(
                //       context: context,
                //       text: 'استبدال النقاط للحصول على كود خصم',
                //       ontap: () {},
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String content,
    Widget? extraContent,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 4.0),
            Icon(icon, color: Colors.white),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          child: Text(
            content,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.grey.shade900,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (extraContent != null) ...[
          const SizedBox(height: 8.0),
          extraContent,
        ],
      ],
    );
  }

  Widget buildButton({
    required BuildContext context,
    required String text,
    required void Function() ontap,
  }) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.88,
        height: MediaQuery.of(context).size.height * 0.055,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black.withOpacity(0.17),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
