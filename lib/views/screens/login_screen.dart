import 'package:chat/views/widgets/line_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import '../widgets/bottom_navigator_bar_widgte.dart';
import '../widgets/custom_form_field_widget.dart';
import '../widgets/external_auth_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color borderColor = Theme.of(context).dividerColor;
    final _emailController = TextEditingController();
    final _passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('KIRISH'), centerTitle: false),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              spacing: 5,
              children: [Icon(Icons.mail_outline), Text('E-MAIL:')],
            ),
            SizedBox(height: 13),
            SizedBox(
              height: 50,
              child: CustomFormFieldWidget(
                controller: _emailController,
                hintText: "namuna@gmail.com",
              ),
            ),
            SizedBox(height: 19),
            Row(
              spacing: 5,
              children: [Icon(Icons.lock_outline_rounded), Text('Parol:')],
            ),
            SizedBox(height: 13),
            SizedBox(
              height: 50,
              child: CustomFormFieldWidget(
                controller: _passController,
                hintText: "password",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Parolni unutdingizmi?',
                    style: TextStyle(color: borderColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavigatorBarWidget(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 77, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    'Davom etish',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 36),
            Row(
              spacing: 15,
              children: [
                Expanded(child: Line()),
                Text(
                  'yoki',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Line()),
              ],
            ),
            SizedBox(height: 36),
            ExternalAuthButtons(
              title: 'Continue with Google',
              logo: Image.asset(AppImages.google),
            ),
            SizedBox(height: 20),
            ExternalAuthButtons(
              title: 'Continue with Apple',
              logo: Icon(Icons.apple),
            ),
            Spacer(),
            Row(
              children: [
                Text('Akkauntingiz yo\'qmi?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text('Kirish'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
