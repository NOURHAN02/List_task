import 'package:flutter/material.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/core/widgets/line_widget.dart';
import 'package:list_task_ui/core/widgets/task_widget_body.dart';
import 'package:list_task_ui/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TaskWidgetBody(taskModel: taskModel),
            LineWidget(taskStatus: taskModel.type),
          ],
        ),
        if (taskModel.type == TaskStatus.completed)
          Positioned.fill(
            child: Container(color: Colors.white.withOpacity(0.4)),
          ),
      ],
    );
  }
}
