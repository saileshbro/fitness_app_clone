import 'package:flutter/material.dart';

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height * .88)
      ..quadraticBezierTo(
        size.width * 0.38,
        size.height,
        size.width,
        size.height * 0.8,
      )
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
