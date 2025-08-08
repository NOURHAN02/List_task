import 'package:flutter/material.dart';
import 'package:list_task_ui/core/helper/date_format.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/constant_list.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/core/utils/style_app.dart';

class SecondRowInTasKWidget extends StatelessWidget {
  const SecondRowInTasKWidget({
    super.key,
    required this.name,
    required this.taskStatus,
    required this.index,
    required this.start,
  });
  final String name;
  final TaskStatus taskStatus;
  final int index;
  final DateTime start;
  @override
  Widget build(BuildContext context) {
    String statusName =
        taskStatus == TaskStatus.notStarted ? "Start" : "Started";
    return Row(
      children: [
        Text(
          name,
          style: StylesApp.textStyle13s.copyWith(color: ColorApp.grey),
        ),
        const Spacer(),
        Text(
          statusName,
          style: StylesApp.textStyle12n.copyWith(color: ColorApp.grey),
        ),
        const SizedBox(width: 5),
        Text(
          formatDate(start),
          style: StylesApp.textStyle12n.copyWith(color: ColorApp.grey),
        ),
        if (taskStatus == TaskStatus.notStarted)
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                ImageConstant.imageEdit,
                height: 12,
                width: 12,
                color: ColorApp.grey,
              ),
            ),
          ),
      ],
    );
  }
}
