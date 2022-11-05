import 'package:desafio_mockup/custom_text_field_widget.dart';
import 'package:desafio_mockup/money_page.dart';
import 'package:desafio_mockup/redirect_button_widget.dart';
import 'package:desafio_mockup/tinder_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0XFF594FCC),
                        Color(0XFF327AD9),
                        Color(0XFF0597F2),
                        Color(0XFF398CBF),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) => const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          tileMode: TileMode.mirror,
                          colors: [
                            Color(0XFF594FCC),
                            Color(0XFF327AD9),
                            Color(0XFF0597F2),
                            Color(0XFF398CBF),
                          ],
                        ).createShader(bounds),
                        child: const Icon(
                          Icons.home,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Positioned(
            top: 400,
            left: 40,
            right: 40,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const CustomTextFieldWidget(text: 'EMAIL'),
                    const CustomTextFieldWidget(
                      text: 'PASSWORD',
                      obscureText: true,
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, 20, 0),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0XFF327AD9),
                      ),
                      child: const Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'FORGOT PASSWORD?',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 50),
                const RedirectButtonWidget(
                  destinationPage: TinderPage(),
                  pageName: 'Tinder',
                ),
                const RedirectButtonWidget(
                  destinationPage: MoneyPage(),
                  pageName: 'Money App',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
