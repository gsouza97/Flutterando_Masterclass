import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final String? imageAsset;
  const CustomButton(
      {Key? key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.imageAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageAsset != null
              ? Row(
                  children: [
                    Image.asset(
                      imageAsset!,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 5),
                  ],
                )
              : Container(),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
