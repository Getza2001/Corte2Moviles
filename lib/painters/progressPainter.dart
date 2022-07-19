import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

class progressPainter extends CustomPainter {
  progressPainter({required this.ban});

  double ban;

  @override
  void paint(Canvas canvas, Size size) {
    // final paint = Paint();
    // paint.strokeWidth = 5;
    // paint.color = ColorsSelect.txBoSubHe;

    final paint = Paint();
    paint.strokeWidth = 6;
    paint.color = ColorsSelect.txtBoHe;
    paint.style = PaintingStyle.stroke;
    Offset offset = Offset(size.width / 2, size.height * 0.50);
    canvas.drawCircle(offset, size.height * 0.48, paint);

    final paint2 = Paint();
    paint2.strokeWidth = 6;
    paint2.color = ColorsSelect.paginatorNext;
    paint2.style = PaintingStyle.stroke;

    Offset offset2 = Offset(size.width * 0.50, size.height * 0.50);
    double porcentaje = pi * 2 * (ban / 100.0);
    Rect rect = Rect.fromCircle(center: offset2, radius: size.height * 0.48);
    canvas.drawArc(rect, -pi / 2, porcentaje, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
