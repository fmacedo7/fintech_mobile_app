import 'package:fintech_mobile_app/ui/components/icon_button_outlined.dart';
import 'package:fintech_mobile_app/ui/components/monthly_graphics.dart';
import 'package:fintech_mobile_app/ui/components/send_money_icon.dart';
import 'package:fintech_mobile_app/ui/constants/button_icon_color.dart';
import 'package:fintech_mobile_app/ui/constants/button_icon_dimensions.dart';
import 'package:flutter/material.dart';

import '../components/icon_button.dart';

class PaymentStatistic extends StatelessWidget {
  const PaymentStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 20, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  backgroundColor: customButtonBackgroundColor,
                  padding: 10,
                  iconSize: 18,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment\nStatistic',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                    CustomIconButtonOutlined(
                      backgroundColor: const Color.fromRGBO(217, 217, 217, 1.0),
                      icon: Icons.add,
                      rightText: const Text(
                        'Add chart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      minimumSize: Size(screenWidth * 0.45, buttonHeight),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 20),
                  child: DoubleIcon(
                    leftIcon: const Icon(Icons.satellite_alt_outlined),
                    text: 'Outground Corp.',
                    infoText: 'Monthly payment',
                    rightIcon: const Icon(Icons.panorama_photosphere),
                    leftBackgroundIconSize: const Size(55, 55),
                    rightIconBackgroundColor:
                        const Color.fromRGBO(176, 214, 96, 1),
                    leftIconPadding:
                        const EdgeInsets.only(left: 8.5, right: 5),
                    backgroundColor: const Color.fromRGBO(216, 253, 125, 1.0),
                    widthButton: screenWidth,
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Money turnover',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MonthlyGraphics(
                                graphicValue: 300,
                                graphicMonth: 'Mar',
                                graphicColor: Color.fromRGBO(45, 49, 36, 1.0),
                              ),
                              MonthlyGraphics(
                                graphicValue: 100,
                                graphicMonth: 'Apr',
                                graphicColor:
                                    Color.fromRGBO(216, 253, 125, 1.0),
                              ),
                              MonthlyGraphics(
                                graphicValue: 200,
                                graphicMonth: 'May',
                                graphicColor: Color.fromRGBO(83, 95, 56, 1.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Continuation',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                '4',
                                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('months', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
