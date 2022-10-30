import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSizeValue = 45;
    var color = Color(0XFF5e5bdc);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: defaultSizeValue,
                width: defaultSizeValue,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: defaultSizeValue,
                width: defaultSizeValue,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultSizeValue),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 5),
          Container(
            height: defaultSizeValue * 2,
            width: defaultSizeValue,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(defaultSizeValue),
                  topRight: Radius.circular(defaultSizeValue)),
            ),
          ),
        ],
      ),
    );
  }
}
