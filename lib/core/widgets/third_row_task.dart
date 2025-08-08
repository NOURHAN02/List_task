import 'package:flutter/material.dart';
import 'package:list_task_ui/core/helper/get_action.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/core/utils/style_app.dart';

class ThirdRowInTasKWidget extends StatelessWidget {
  const ThirdRowInTasKWidget({
    super.key,
    required this.assignedTo,
    required this.priority,
    required this.taskStatus,
    required this.index,
  });
  final String assignedTo, priority;
  final TaskStatus taskStatus;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              assignedTo,
              style: StylesApp.textStyle13n.copyWith(color: ColorApp.grey),
            ),
            const SizedBox(width: 7),
            Text(
              priority,
              style: StylesApp.textStyle13s.copyWith(color: ColorApp.red),
            ),
          ],
        ),
        const Spacer(),
        getAction(task: taskStatus, index: index, context: context),
        const SizedBox(width: 5),
      ],
    );
  }
}
