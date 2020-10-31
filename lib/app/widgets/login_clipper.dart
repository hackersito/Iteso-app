import 'package:flutter/widgets.dart';

class LoginClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final ratio = size.width / 3 * 1.15;
    final control = Offset(0, size.height - ratio);
    final end = Offset(ratio, size.height - ratio);
    final control1 = Offset(size.width, size.height - ratio);
    final end1 = Offset(size.width, size.height);
    final Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, size.height - 2 * ratio)
      ..quadraticBezierTo(control.dx, control.dy, end.dx, end.dy)
      ..lineTo(ratio, size.height - ratio)
      ..quadraticBezierTo(control.dx, control.dy, end.dx, end.dy)
      ..lineTo(size.width - ratio, size.height - ratio)
      ..quadraticBezierTo(control1.dx, control1.dy, end1.dx, end1.dy)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
