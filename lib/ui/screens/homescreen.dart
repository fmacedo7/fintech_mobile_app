import 'package:fintech_mobile_app/ui/components/glassy_button.dart';
import 'package:fintech_mobile_app/ui/components/icon_button.dart';
import 'package:fintech_mobile_app/ui/components/operations_card.dart';
import 'package:fintech_mobile_app/ui/components/send_money_icon.dart';
import 'package:fintech_mobile_app/ui/constants/button_icon_color.dart';
import 'package:fintech_mobile_app/ui/constants/button_icon_dimensions.dart';
import 'package:fintech_mobile_app/ui/screens/send_money.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.monetization_on_outlined,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Fingen Bank',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.dashboard_customize_outlined),
                            color: Colors.white,
                          ),
                          const Text(
                            'More',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Your Balance',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              wordSpacing: 3,
                              letterSpacing: 3,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                '\$13,451',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35,
                                  letterSpacing: 3,
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: const Color.fromRGBO(140, 190, 20, 1),
                                ),
                                child: const Center(
                                  child: Text(
                                    '2%',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GlassyButton(
                        text: 'Add Invoice', icon: Icons.edit_note_outlined),
                    GlassyButton(text: 'Loyalty', icon: Icons.percent_outlined),
                    GlassyButton(text: 'Exchange', icon: Icons.swap_horiz),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    children: [
                      DoubleIcon(
                        rightIcon: const Icon(Icons.arrow_forward),
                        text: 'Send Money',
                        leftIcon: const Icon(Icons.paid_outlined),
                        rightIconBackgroundColor:
                            const Color.fromRGBO(176, 214, 96, 1),
                        backgroundColor: const Color.fromRGBO(217, 255, 126, 1),
                        leftBackgroundIconSize: const Size(55, 55),
                        leftIconPadding:
                            const EdgeInsets.only(left: 7, right: 7),
                        widthButton: screenWidth * 0.66,
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SendMoney()));
                        },
                      ),
                      const Expanded(child: Row()),
                      CustomIconButton(
                        icon: const Icon(Icons.view_cozy_outlined),
                        backgroundColor: customButtonBackgroundColor,
                        minimumSize: const Size(buttonWidth, buttonHeight),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SendMoney()));
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Operations',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                letterSpacing: 2.5,
                              ),
                            ),
                            Icon(
                              Icons.insights,
                              color: Colors.white,
                              size: 27,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Column(
                            children: [
                              OperationsCard(
                                logoImage:
                                    AssetImage('assets/img_logo/fbc.jpg'),
                                institutionTitle: 'Federal Government',
                                periodType: 'Monthly payment',
                                operationValue: '26.999',
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: OperationsCard(
                                    logoImage: AssetImage(
                                        'assets/img_logo/beretta.png'),
                                    institutionTitle: 'Beretta Company',
                                    periodType: 'Monthly payment',
                                    operationValue: '700'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomIconButton(
                        icon: Icon(Icons.house_sharp),
                        backgroundColor: Color.fromRGBO(216, 253, 125, 1.0),
                        minimumSize: Size(52, 52),
                      ),
                      CustomIconButton(
                        icon: Icon(Icons.blur_circular_outlined),
                        backgroundColor: Colors.transparent,
                        minimumSize: Size(52, 52),
                      ),
                      CustomIconButton(
                        icon: Icon(Icons.person_outline),
                        backgroundColor: Colors.transparent,
                        minimumSize: Size(52, 52),
                      ),
                      CustomIconButton(
                        icon: Icon(Icons.currency_exchange_outlined),
                        backgroundColor: Colors.transparent,
                        minimumSize: Size(52, 52),
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
