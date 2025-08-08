import 'package:flutter/material.dart';

Widget buildFlexibleDashedLine({
  double dashWidth = 6,
  double dashHeight = 2,
  double dashSpacing = 4,
  Color color = Colors.grey,
}) {
  return LayoutBuilder(
    builder: (context, constraints) {
      final boxWidth = constraints.maxWidth;
      final dashCount = (boxWidth / (dashWidth + dashSpacing)).floor();
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(dashCount, (_) {
          return SizedBox(
            width: dashWidth,
            height: dashHeight,
            child: DecoratedBox(decoration: BoxDecoration(color: color)),
          );
        }),
      );
    },
  );
}
