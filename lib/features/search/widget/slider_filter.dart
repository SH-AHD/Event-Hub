import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class RectThumbShape extends SfThumbShape {
  final double width;
  final double height;
  final Color color;
  final Color borderColor;
  final double borderWidth;

  RectThumbShape({
    required this.width,
    required this.height,
    this.color = Colors.white,
    this.borderColor = Colors.blue,
    this.borderWidth = 2,
  });

  @override
  Size getPreferredSize(SfSliderThemeData themeData) {
    return Size(width, height);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required RenderBox? child ,
    required SfSliderThemeData themeData,
    SfRangeValues? currentValues,
    dynamic currentValue,
    required Paint? paint,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required SfThumb? thumb,
  }) {
    final Canvas canvas = context.canvas;

    final rect = Rect.fromCenter(center: center, width: width, height: height);

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..isAntiAlias = true;

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(8)),
      fillPaint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(8)),
      borderPaint,
    );
    
    if (child != null) {
      context.paintChild(
        child,
        Offset(
          center.dx - child.size.width / 2,
          center.dy - child.size.height / 2,
        ),
      );
    }
  }
}
