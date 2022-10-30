import 'package:desafio_mockup/custom_button.dart';
import 'package:desafio_mockup/logo.dart';
import 'package:desafio_mockup/tinder_page.dart';
import 'package:flutter/material.dart';

class MoneyPage extends StatelessWidget {
  const MoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(height: 200),
            const Logo(),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 40, 0, 100),
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Get your Money\nUnder Control',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Manage your expenses.\nSeamlessly.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const CustomButton(
              backgroundColor: Color(0XFF5e5bdc),
              text: 'Sign Up with Email ID',
              textColor: Colors.white,
            ),
            const SizedBox(height: 16),
            const CustomButton(
              backgroundColor: Colors.white,
              text: 'Sign Up with Google',
              textColor: Colors.black,
              imageAsset: 'lib/google_icon.png',
            ),
            const SizedBox(height: 40),
            RichText(
              text: const TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TinderPage(),
                  ),
                );
              },
              child: const Text(
                'Login to Tinder',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
