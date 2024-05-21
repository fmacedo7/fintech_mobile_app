import 'package:flutter/material.dart';

class OperationsCard extends StatelessWidget {
  final AssetImage logoImage;
  final String institutionTitle;
  final String periodType;
  final String operationValue;

  const OperationsCard(
      {super.key,
      required this.logoImage,
      required this.institutionTitle,
      required this.periodType,
      required this.operationValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: logoImage,
          radius: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                institutionTitle,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                ),
              ),
              Text(
                periodType,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const Expanded(child: Row()),
        Text(
          '-${operationValue}\$',
          style: const TextStyle(color: Colors.white, fontSize: 19),
        ),
      ],
    );
  }
}
