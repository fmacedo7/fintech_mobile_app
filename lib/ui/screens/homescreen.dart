import 'package:fintech_mobile_app/ui/components/button_icon.dart';
import 'package:fintech_mobile_app/ui/components/send_money_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/button_icon_background_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomIconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      backgroundColor: customButtonBackgroundColor,
                      padding: 10,
                      iconSize: 18,
                      onPressed: () {},
                    ),
                    const Expanded(
                      child: Row(),
                    ),
                    CustomIconButton(
                      icon: const Icon(Icons.wallet),
                      backgroundColor: customButtonBackgroundColor,
                      minimumSize: const Size(95, 60),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomIconButton(
                      icon: const Icon(Icons.currency_exchange_outlined),
                      backgroundColor: customButtonBackgroundColor,
                      minimumSize: const Size(95, 60),
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
                    SendMoneyButton(),
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
                            AssetImage('assets/img_profiles/gideoes.jpg'),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/img_profiles/juliete.jpg'),
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/img_profiles/caic.jpg'),
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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('assets/img_profiles/fbc.jpg'),
                            ),
                            const Text(
                              'Federal Government',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            IconButton.outlined(
                              icon: const Icon(Icons.edit_square),
                              style: ButtonStyle(
                                iconColor: WidgetStateProperty.all<Color>(Colors.black),
                                minimumSize: WidgetStateProperty.all<Size>(const Size(65, 65))
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
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
