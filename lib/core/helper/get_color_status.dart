import 'package:flutter/material.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/enums.dart';

Color getColorStatus({required TaskStatusName statusName}) {
  if (statusName == TaskStatusName.Overdue) {
    return ColorApp.red;
  } else if (statusName == TaskStatusName.Completed) {
    return ColorApp.green;
  } else {
    return ColorApp.orange;
  }
}
