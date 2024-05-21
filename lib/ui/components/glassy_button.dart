import 'dart:ui';
import 'package:flutter/material.dart';

class GlassyButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double? backgroundOpacity;
  final VoidCallback? onClick;
  final double? borderRadius;
  final double? width;
  final double? height;

  const GlassyButton(
      {super.key,
      required this.text,
      required this.icon,
      this.backgroundOpacity,
      this.onClick,
      this.borderRadius,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 25.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 170.0, sigmaY: 170.0),
        child: GestureDetector(
          onTap: onClick,
          child: Container(
            width: width ?? 100,
            height: height ?? 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 25.0),
              color: Colors.grey.withOpacity(backgroundOpacity ??
                  0.1), // Aumente a opacidade para reduzir a transparência do fundo
              border: Border.all(
                color:
                    Colors.white10.withOpacity(0.3), // Transparência da borda
                width: 1.5,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Colors.black,
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
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
