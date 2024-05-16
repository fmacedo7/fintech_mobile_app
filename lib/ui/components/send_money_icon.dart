import 'package:fintech_mobile_app/ui/constants/button_icon_background_color.dart';
import 'package:flutter/material.dart';

class SendMoneyButton extends StatelessWidget {
  const SendMoneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(
        color: customButtonBackgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.wallet_outlined),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
              iconColor: WidgetStateProperty.all<Color>(Colors.white),
              minimumSize: WidgetStateProperty.all<Size>(const Size(70, 70),),
            ),
          ),
          const Text(
            '9722',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
              ),
              child: const Icon(Icons.autorenew),
            ),
          ),
        ],
      ),
    );
  }
}
