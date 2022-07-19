import 'package:flutter/widgets.dart';
import 'package:mvp_all/src/styles/colors/colors_views.dart';

class ButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint();
    paint0.color = ColorsSelect.btnBackgroundBo2;
    paint0.style = PaintingStyle.fill;
    paint0.strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(0, size.height * 0);
    path0.quadraticBezierTo(
        size.width * 1, size.height * 0, size.width * 0.015, 0);

    path0.cubicTo(size.width * 0.35, size.height * -0.38, size.width * 0.42,
        size.height * 0.25, size.width * 0.50, size.height * 0.2);
    path0.cubicTo(size.width * 0.58, size.height * 0.3, size.width * 0.7,
        size.height * -0, size.width * 0.77, 0);

    path0.quadraticBezierTo(
      size.width * 1,
      size.height * -0.30,
      size.width,
      size.height * 0.08,
    );
    path0.lineTo(size.width, size.height);

    canvas.drawPath(path0, paint0);

    // Paint paint0 = Paint();
    // paint0.color = ColorSelect.btnBackgroundBo2;
    // paint0.style = PaintingStyle.fill;
    // paint0.strokeWidth = 1;

    // Path path0 = Path();
    // path0.moveTo(0, size.height);
    // path0.lineTo(0, size.height * 0.0980000);
    // path0.quadraticBezierTo(size.width * 0.0483500, size.height * 0.0005000,
    //     size.width * 0.1996000, 0);
    // path0.cubicTo(
    //     size.width * 0.3509000,
    //     size.height * -0.0038000,
    //     size.width * 0.4223000,
    //     size.height * 0.2590000,
    //     size.width * 0.5008000,
    //     size.height * 0.2664000);
    // path0.cubicTo(
    //     size.width * 0.5862000,
    //     size.height * 0.2692000,
    //     size.width * 0.6562000,
    //     size.height * -0.0116000,
    //     size.width * 0.8016000,
    //     0);
    // path0.quadraticBezierTo(size.width * 0.9522000, size.height * -0.0142000,
    //     size.width, size.height * 0.0368000);
    // path0.lineTo(size.width, size.height);

    // canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
