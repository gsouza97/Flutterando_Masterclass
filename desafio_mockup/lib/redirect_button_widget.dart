import 'package:flutter/material.dart';

class RedirectButtonWidget extends StatelessWidget {
  final Widget destinationPage;
  final String pageName;
  final Color color;

  const RedirectButtonWidget(
      {Key? key,
      required this.destinationPage,
      this.color = Colors.black,
      required this.pageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => destinationPage,
            ),
          );
        },
        child: Text(
          'Go to $pageName',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
