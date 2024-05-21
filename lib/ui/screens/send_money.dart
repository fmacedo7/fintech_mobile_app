import 'package:fintech_mobile_app/ui/components/icon_button.dart';
import 'package:fintech_mobile_app/ui/components/icon_button_outlined.dart';
import 'package:fintech_mobile_app/ui/components/send_money_icon.dart';
import 'package:fintech_mobile_app/ui/screens/payment_statistic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/button_icon_color.dart';
import '../constants/button_icon_dimensions.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
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
                    const Expanded(
                      child: Row(),
                    ),
                    CustomIconButton(
                      icon: const Icon(Icons.wallet),
                      backgroundColor: customButtonBackgroundColor,
                      minimumSize: const Size(95, buttonHeight),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomIconButton(
                      icon: const Icon(Icons.currency_exchange_outlined),
                      backgroundColor: customButtonBackgroundColor,
                      minimumSize: const Size(95, buttonHeight),
                      onPressed: () {},
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Send\nMoney',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    DoubleIcon(
                      leftIcon: Icon(Icons.wallet),
                      text: '9722',
                      rightIcon: Icon(Icons.autorenew),
                      rightIconBackgroundColor: Colors.white,
                      leftIconPadding: EdgeInsets.only(right: 5),
                    ),
                  ],
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/img_profiles/angelic.jpg'),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/img_profiles/redqueen.jpg'),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/img_profiles/vampire.jpg'),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: customButtonBackgroundColor,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: customButtonBackgroundColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 60),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    AssetImage('assets/img_logo/fbc.jpg'),
                              ),
                              Text(
                                'Federal Government',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              CustomIconButtonOutlined(
                                icon: Icons.edit_square,
                                backgroundColor: customButtonBackgroundColor,
                                minimumSize: Size(65, 65),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Montly Payment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Text(
                                  '\$26.999',
                                  style: TextStyle(
                                      fontSize: 35, // Tamanho da fonte
                                      color: Colors.black,
                                      fontWeight:
                                          FontWeight.bold // Cor do texto
                                      ),
                                ),
                                Positioned(
                                  top: 6,
                                  left: 135,
                                  child: Text(
                                    ',99',
                                    style: TextStyle(
                                      fontSize: 16, // Tamanho da fonte
                                      color: Colors.grey, // Cor do texto
                                      fontStyle: FontStyle.italic, // Itálico
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CustomIconButtonOutlined(
                              icon: Icons.arrow_forward,
                              backgroundColor: customButtonBackgroundColor,
                              minimumSize: Size(105, buttonHeight),
                              shape: 40,
                              leftText: Text(
                                'All',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButtonOutlined(
                        backgroundColor: customButtonBackgroundColor,
                        leftText: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        minimumSize: Size(screenWidth * 0.42, buttonHeight),
                        onClick: (){
                          Navigator.pop(context);
                        },
                      ),
                      CustomIconButtonOutlined(
                        backgroundColor: const Color.fromRGBO(217, 255, 126, 1),
                        leftText: const Text(
                          'Next',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        minimumSize: Size(screenWidth * 0.42, buttonHeight),
                        onClick: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentStatistic()));
                        },
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Terms of Use',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
