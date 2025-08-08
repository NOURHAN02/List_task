import 'package:flutter/material.dart';
import 'package:list_task_ui/core/helper/dashed_line_verticalr.dart';
import 'package:list_task_ui/core/helper/get_continer_color.dart';
import 'package:list_task_ui/core/utils/enums.dart';

class ShapeLineWidget extends StatelessWidget {
  const ShapeLineWidget({super.key, required this.taskStatus});

  final TaskStatus taskStatus;

  @override
  Widget build(BuildContext context) {
    return taskStatus == TaskStatus.notStarted
        ? SizedBox(
          height: 10,
          width: 5,
          child: buildFlexibleVerticalDashedLine(
            color: getContinerColor(taskStatus),
          ),
        )
        : Container(width: 5, color: getContinerColor(taskStatus));
  }
}
