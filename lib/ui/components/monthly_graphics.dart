import 'package:flutter/material.dart';
import 'icon_button_outlined.dart';

class MonthlyGraphics extends StatelessWidget {
  final int graphicValue;
  final String graphicMonth;
  final Color graphicColor;
  final double graphicHeight;

  const MonthlyGraphics({super.key, required this.graphicValue, required this.graphicMonth, required this.graphicColor, required this.graphicHeight});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '\$$graphicValue',
          style: const TextStyle(
              color: Colors.white, fontSize: 22),
        ),
        Padding(
          padding:
          const EdgeInsets.only(top: 5, bottom: 10),
          child: Container(
            width: screenWidth * 0.25,
            height: graphicHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: graphicColor,
            ),
          ),
        ),
        CustomIconButtonOutlined(
          backgroundColor: Colors.black,
          borderColor: Colors.white,
          rightText: Text(
            graphicMonth,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          minimumSize: Size(screenWidth * 0.25, 55),
        ),
      ],
    );
  }
}
