import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/signup.dart';
import 'package:belahododfinal/Features/Auth/Login/presentation/login.dart';
import 'package:flutter/material.dart';

import 'info.dart';
import 'verifyOldPasswordScreen .dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('تسجيل الخروج'),
          content: const Text('هل تريد بالتأكيد تسجيل الخروج؟'),
          actions: [
            TextButton(
              child: const Text('الغاء', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('موافق', style: TextStyle(color: Colors.black)),
              onPressed: () {
                // Handle logout logic here
                Navigator.of(context).pop();
                _logout(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('حذف الحساب'),
          content: const Text('هل تريد بالتأكيد حذف الحساب؟'),
          actions: [
            TextButton(
              child: const Text('الغاء', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('موافق', style: TextStyle(color: Colors.black)),
              onPressed: () {
                // Handle delete account logic here
                Navigator.of(context).pop();
                _deleteAccount(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _logout(BuildContext context) {
    // Clear user session data (e.g., shared preferences, session tokens)
    // For demonstration purposes, we'll just navigate to the login screen.
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LogIn()),
      (Route<dynamic> route) => false,
    );
  }

  void _deleteAccount(BuildContext context) {
    // Handle account deletion logic
    // For demonstration purposes, we'll just navigate to the login screen.
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const Signup()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إعدادات الحساب'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('الاسم', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text('مينا فرحات', style: TextStyle(fontSize: 20)),
            const Divider(),
            const Text('رقم الهاتف', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text('0966554452', style: TextStyle(fontSize: 20)),
            const Divider(),
            const Text('العنوان', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: 'دمشق',
                    onChanged: (String? newValue) {},
                    items: <String>['دمشق', 'حلب', 'حمص', 'اللاذقية']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButton<String>(
                    // isExpanded: true,
                    value: 'دويعة/ركن ابو عطاف',
                    onChanged: (String? newValue) {},
                    items: <String>[
                      'دويعة/ركن ابو عطاف',
                      'منطقة أخرى',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const VerifyOldPasswordScreen()), // افترض أن ChangePasswordScreen هو اسم الواجهة لتغيير كلمة المرور
                );
              },
              child: const ListTile(
                leading: Icon(Icons.arrow_forward_ios),
                title: Text(
                  'تغيير كلمة المرور',
                  textDirection: TextDirection.rtl,
                ),
                trailing: Icon(Icons.lock),
              ),
              // child: Row(
              //   children: [
              //     Icon(Icons.arrow_forward_ios),
              //     Spacer(),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text('تغيير كلمة المرور'
              //           ,  textDirection: TextDirection.ltr,
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Icon(Icons.lock),
              //     ),
              //   ],
              // ),
            ),
            InkWell(
              onTap: () {
                _showLogoutDialog(context);
              },
              child: const ListTile(
                leading: Icon(Icons.arrow_forward_ios),
                title: Text(
                  'تسجيل الخروج',
                  textDirection: TextDirection.rtl,
                ),
                trailing: Icon(Icons.exit_to_app),
              ),
            ),
            InkWell(
              onTap: () {
                _showDeleteAccountDialog(context);
              },
              child: const ListTile(
                leading: Icon(Icons.arrow_forward_ios),
                title: Text(
                  'حذف الحساب',
                  textDirection: TextDirection.rtl,
                ),
                trailing: Icon(Icons.delete),
              ),
            ),
            const Spacer(),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Info()), // افترض أن ChangePasswordScreen هو اسم الواجهة لتغيير كلمة المرور
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text('تواصل معنا'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
