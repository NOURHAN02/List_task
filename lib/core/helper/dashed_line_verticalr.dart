import 'package:flutter/material.dart';

Widget buildFlexibleVerticalDashedLine({
  required Color color,
  double dashHeight = 20,
  double dashSpacing = 4,
  double dashWidth = 10,
}) {
  return LayoutBuilder(
    builder: (context, constraints) {
      final height = constraints.maxHeight;
      final dashCount = (height / (dashHeight + dashSpacing)).floor();

      return Column(
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
