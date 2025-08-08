import 'package:flutter/material.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/core/utils/style_app.dart';
import 'package:list_task_ui/provider/main_provider.dart';
import 'package:provider/provider.dart';

Widget getAction({required TaskStatus task, required int index, context}) {
  if (task == TaskStatus.started) {
    return makeCompleteTask(index: index, context: context);
  } else if (task == TaskStatus.notStarted) {
    return makeStartTask(index: index, context: context);
  } else {
    return SizedBox();
  }
}

Widget makeCompleteTask({required int index, context}) {
  return InkWell(
    onTap: () {
      Provider.of<MainProvider>(
        context,
        listen: false,
      ).makeCompleteTaskFunction(index: index);
    },
    child: Row(
      children: [
        const Icon(Icons.check, color: ColorApp.green, size: 16),
        const SizedBox(width: 4),
        Text(
          "Mark as complete",
          style: StylesApp.textStyle14n.copyWith(color: ColorApp.green),
        ),
      ],
    ),
  );
}

Widget makeStartTask({required int index, context}) {
  return InkWell(
    onTap: () {
      Provider.of<MainProvider>(
        context,
        listen: false,
      ).makeStartTaskFunction(index: index);
    },
    child: Row(
      children: [
        const Icon(Icons.play_circle, color: ColorApp.blue, size: 16),
        const SizedBox(width: 4),
        Text(
          "Start Task",
          style: StylesApp.textStyle14n.copyWith(color: ColorApp.blue),
        ),
      ],
    ),
  );
}
