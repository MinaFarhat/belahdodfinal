import 'package:flutter/material.dart';

class VerifyOldPasswordScreen  extends StatelessWidget {
  const VerifyOldPasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Image.asset(
                'assets/images/pic.jpg', // Replace with your illustration asset path
                height: 150,
              ),
              const SizedBox(height: 30),
              const Text(
                'إعادة تعيين كلمة مرور جديدة',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'أدخل كلمة المرور القديمة أو أي أخر كلمة مرور تتذكرها',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور القديمة',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Add your verification logic here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'تحقق',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
