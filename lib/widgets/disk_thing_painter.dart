import 'dart:math';

import 'package:flutter/material.dart';

class DiskThingPainter extends CustomPainter {
  final LinearGradient gradient;

  DiskThingPainter({this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    final side = min(size.width, size.height) / 2;
    final center = Offset(side, side);

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..shader = gradient
          .createShader(Rect.fromCircle(center: center, radius: side / 2))
      ..color = Colors.black;

    canvas.drawCircle(center, side, paint);
    paint.shader = null; // reset gradient

    const int slices = 60;
    const angleWithSpace = 2 * pi / slices;
    for (int i = 0; i < slices; i++) {
      canvas.drawArc(Rect.fromCircle(center: center, radius: side),
          i * angleWithSpace, angleWithSpace / 2, true, paint);
    }

    canvas.drawCircle(center, 0.6 * side, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
