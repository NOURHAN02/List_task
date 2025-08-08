import 'package:flutter/material.dart';
import 'package:list_task_ui/core/helper/dashed_line_hor.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/enums.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({super.key, required this.taskStatus});
  final TaskStatus taskStatus;
  @override
  Widget build(BuildContext context) {
    return taskStatus == TaskStatus.notStarted
        ? SizedBox(
          width: double.infinity,
          child: buildFlexibleDashedLine(
            color: ColorApp.lighteepGrey,
            dashHeight: 1,
          ),
        )
        : Divider();
  }
}
