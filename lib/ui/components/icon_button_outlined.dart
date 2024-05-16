import 'package:flutter/material.dart';

class CustomIconButtonOutlined extends StatelessWidget {
  final IconData? icon;
  final Widget? leftText;
  final ButtonStyle? style;
  final double shape;
  final Size? minimumSize;
  final Color backgroundColor;
  final VoidCallback? onClick;

  const CustomIconButtonOutlined({
    Key? key,
    this.icon,
    this.leftText,
    this.style,
    this.shape = 50,
    this.minimumSize,
    required this.backgroundColor,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leftText != null) leftText!,
          if (icon != null) Icon(icon),
        ],
      ),
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(
          minimumSize ?? const Size(48, 48),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(shape),
          ),
        ),
        iconColor: WidgetStateProperty.all<Color>(Colors.black),
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
      ).merge(style),
      onPressed: onClick,
    );
  }
}
