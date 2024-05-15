import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final double? iconSize;
  final ButtonStyle? style;
  final VoidCallback? onPressed;
  final OutlinedBorder? shape;
  final Size? minimumSize;
  final Color backgroundColor;
  final double? padding;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.iconSize,
    this.style,
    this.onPressed,
    this.shape,
    this.minimumSize,
    required this.backgroundColor, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      icon: icon,
      iconSize: iconSize ?? 24,
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<OutlinedBorder>(shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        minimumSize:
            WidgetStateProperty.all<Size>(minimumSize ?? const Size(48, 48)),
        backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
        iconColor: WidgetStateProperty.all<Color>(Colors.black),
        padding: WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.all(padding ?? 15)),
      ).merge(style),
    );
  }
}
