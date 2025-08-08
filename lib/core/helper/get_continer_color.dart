import 'package:flutter/material.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/enums.dart';

Color getContinerColor(TaskStatus task) {
  if (task == TaskStatus.started) {
    return ColorApp.blue;
  } else if (task == TaskStatus.completed) {
    return ColorApp.green;
  } else {
    return ColorApp.lighteepGrey;
  }
}
