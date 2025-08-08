import 'package:flutter/material.dart';
import 'package:list_task_ui/core/helper/get_color_status.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/core/utils/style_app.dart';

Widget getMarkStatus({required TaskStatusName statusName}) {
  if (statusName == TaskStatusName.Completed) {
    return Text(
      " : ",
      style: StylesApp.textStyle13s.copyWith(
        color: getColorStatus(statusName: statusName),
      ),
    );
  } else if (statusName == TaskStatusName.Overdue) {
    return Text(
      " - ",
      style: StylesApp.textStyle13s.copyWith(
        color: getColorStatus(statusName: statusName),
      ),
    );
  } else {
    return SizedBox();
  }
}
