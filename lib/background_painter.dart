import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {

  BackgroundPainter();
  final double animationValue = 0.0;

  @override
  paint(Canvas canvas, Size size) {

    _drawWave(canvas, size, 60.0, 25.0, 0.30);
    _drawWave(canvas, size, 80.0, 0.0, 0.40);
    _drawWave(canvas, size, 20.0, 105.0, 0.40);
    _drawWave(canvas, size, 30.0, 50.0, 0.40);
    _drawWave(canvas, size, 0.0, 85.0, 0.40);
    _drawWave(canvas, size, 125.0, 30.0, 0.40);
    _drawWave(canvas, size, 70.0, 140.0, 0.40);
  }


  _drawWave(
      Canvas canvas,
      Size size,
      double pathHeight,
      double secondEndPointHeight,
      double opacity) {
    var path = new Path();
    path.moveTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - pathHeight);



    var secondEndPoint = new Offset(0.0, size.height - secondEndPointHeight);
    var secondControlPoint =
    new Offset(size.width / 3.25, size.height - secondEndPointHeight);
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.close();

    canvas.drawPath(
      path,
      new Paint()..color = Colors.lightBlue.withOpacity(opacity),
    );
  }

  @override
  bool shouldRepaint(BackgroundPainter oldDelegate) =>
      oldDelegate.animationValue != animationValue;

}
