import 'package:chat/views/screens/login_screen.dart';
import 'package:chat/views/widgets/custom_form_field_widget.dart';
import 'package:chat/views/widgets/line_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import '../widgets/bottom_navigator_bar_widgte.dart';
import '../widgets/external_auth_buttons.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _passController = TextEditingController();
    final _attController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('RO’YXATDAN O’TISH'), centerTitle: false),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.person_4_outlined),
                  Text(
                    'Ism va Familiya:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 13),
              CustomFormFieldWidget(
                controller: _nameController,
                hintText: 'ism va Familiya',
              ),
              SizedBox(height: 23),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.mail_outline_outlined),
                  Text(
                    'E-MAIL:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 13),
              CustomFormFieldWidget(
                controller: _emailController,
                hintText: 'namuna@gmail.com',
              ),
              SizedBox(height: 23),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.person_4_outlined),
                  Text(
                    'Parol:',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 13),
              CustomFormFieldWidget(
                controller: _passController,
                hintText: 'password',
              ),
              SizedBox(height: 23),
              Text('Parolni tasdiqlang'),
              SizedBox(height: 13),
              CustomFormFieldWidget(
                controller: _attController,
                hintText: 'password',
              ),
              SizedBox(height: 23),
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 23),
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
              SizedBox(height: 23),
              ExternalAuthButtons(
                title: 'Continue with Google',
                logo: Image.asset(AppImages.google),
              ),
              SizedBox(height: 20),
              ExternalAuthButtons(
                title: 'Continue with Apple',
                logo: Icon(Icons.apple),
              ),
              Row(
                children: [
                  Text('Akkauntingiz bormi?'),
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
      ),
    );
  }
}
