import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  final EdgeInsets margin;
  final IconData icon;
  final Color color;
  final double size;

  IconContent(
    this.margin,
    this.icon,
    this.color,
    this.size
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }

}