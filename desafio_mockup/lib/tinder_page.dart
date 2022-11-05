// ignore: prefer_const_constructors

// ignore_for_file: prefer_const_constructors

import 'package:desafio_mockup/custom_tinder_button.dart';
import 'package:desafio_mockup/login_page.dart';
import 'package:desafio_mockup/money_page.dart';
import 'package:desafio_mockup/redirect_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0XFFEC7163),
              Color(0XFFEB5E6B),
              Color(0XFFE94B76),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 300),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/tinder_icon.png', height: 45),
                  const SizedBox(width: 8),
                  const Text(
                    'tinder',
                    style: TextStyle(
                      fontFamily: 'Britanica',
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              SizedBox(height: 90),
              Text.rich(
                textAlign: TextAlign.center,
                const TextSpan(
                  text:
                      'By tapping Create Account or Sign In, you agree to our ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Britanica',
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '. Learn how we process your data in our ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomTinderButton(
                        text: 'SIGN IN WITH APPLE', icon: Icons.apple),
                    CustomTinderButton(
                        text: 'SIGN IN WITH FACEBOOK', icon: Icons.facebook),
                    CustomTinderButton(
                      text: 'SIGN IN WITH PHONE NUMBER',
                      icon: CupertinoIcons.chat_bubble_fill,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Trouble Signing In?',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 20),
              const RedirectButtonWidget(
                destinationPage: MoneyPage(),
                pageName: 'Money App',
                color: Colors.white,
              ),
              RedirectButtonWidget(
                destinationPage: LoginPage(),
                pageName: 'Login',
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
