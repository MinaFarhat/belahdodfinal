import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF7B1FA2),
                Color(0xFF2196F3),
              ],
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const SizedBox(height: 16.0),
              const Text(
                'أصدقاء بلا حدود',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              buildSection(
                icon: Icons.info_outline,
                title: 'معلومات عن نظام أصدقاء بلا حدود',
                content:
                    'يساعد نظام أصدقاء بلا حدود على إعطاء العملاء نقاط ولاء من أجل استعمالها بعمليات الشراء أو الاستبدال داخل التطبيق.',
              ),
              buildSection(
                icon: Icons.help_outline,
                title: 'كيف تحصل على النقاط؟',
                content:
                    'يمكنك الحصول على نقاط إضافية بعد القيام بعدد معين من عمليات الشراء داخل التطبيق أو من خلال إنفاق مبلغ معين داخل التطبيق أو من خلال مشاركة التطبيق بين أصدقائك.',
              ),
              buildSection(
                icon: Icons.swap_horiz,
                title: 'استبدال النقاط',
                content:
                    'يمكنك استبدال النقاط للحصول على قسائم لأجل إهدائها أو استخدامها عند عملية الدفع لشراء منتج داخل التطبيق.',
                extraContent: Column(
                  children: [
                    buildButton('استبدال النقاط للحصول على قسيمة'),
                    buildButton('استبدال النقاط للحصول على كود خصم'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection(
      {required IconData icon,
      required String title,
      required String content,
      Widget? extraContent}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            content,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          if (extraContent != null) ...[
            const SizedBox(height: 16.0),
            extraContent,
          ],
        ],
      ),
    );
  }

  Widget buildButton(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
