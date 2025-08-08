import 'package:flutter/material.dart';
import 'package:list_task_ui/core/widgets/first_row_task.dart';
import 'package:list_task_ui/core/widgets/second_row_task.dart';
import 'package:list_task_ui/core/widgets/shape_line_widget.dart';
import 'package:list_task_ui/core/widgets/third_row_task.dart';
import 'package:list_task_ui/models/task_model.dart';

class TaskWidgetBody extends StatelessWidget {
  const TaskWidgetBody({super.key, required this.taskModel});

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShapeLineWidget(taskStatus: taskModel.type),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FirstRowInTasKWidget(
                    title: taskModel.id,
                    status: taskModel.status,
                    days: taskModel.statusDetail,
                    index: taskModel.index,
                    start: taskModel.startDate,
                    statusTask: taskModel.type,
                    end: taskModel.dueDate,
                  ),
                  SizedBox(height: 5),
                  SecondRowInTasKWidget(
                    name: taskModel.title,
                    taskStatus: taskModel.type,
                    index: taskModel.index,
                    start: taskModel.startDate,
                  ),
                  SizedBox(height: 5),
                  ThirdRowInTasKWidget(
                    assignedTo: taskModel.assignedTo,
                    priority: taskModel.priority,
                    taskStatus: taskModel.type,
                    index: taskModel.index,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
