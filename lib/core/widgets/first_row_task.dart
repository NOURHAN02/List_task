import 'package:flutter/material.dart';
import 'package:list_task_ui/core/helper/date_format.dart';
import 'package:list_task_ui/core/helper/get_color_status.dart';
import 'package:list_task_ui/core/helper/get_mark_status.dart';
import 'package:list_task_ui/core/utils/color_app.dart';
import 'package:list_task_ui/core/utils/constant_list.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/core/utils/style_app.dart';
import 'package:list_task_ui/provider/main_provider.dart';
import 'package:provider/provider.dart';

class FirstRowInTasKWidget extends StatelessWidget {
  const FirstRowInTasKWidget({
    super.key,
    required this.title,
    required this.days,
    required this.status,
    required this.index,
    required this.start,
    required this.statusTask,
    this.end,
  });
  final String title, days;
  final TaskStatusName status;
  final TaskStatus statusTask;
  final int index;
  final DateTime start;
  final DateTime? end;
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<MainProvider>(context);
    final conditionDay = statusTask == TaskStatus.completed && end != null;
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                title,
                style: StylesApp.textStyle16s.copyWith(
                  decoration: TextDecoration.underline,
                  color: ColorApp.blue,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.more_vert, color: ColorApp.grey),
            ],
          ),
        ),
        Text(
          status.name,
          style: StylesApp.textStyle13s.copyWith(
            color: getColorStatus(statusName: status),
          ),
        ),
        getMarkStatus(statusName: status),
        Text(
          conditionDay ? formatDate(end ?? DateTime.now()) : days,
          style: StylesApp.textStyle13s.copyWith(
            color: getColorStatus(statusName: status),
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            bloc.pickStartDate(context, index, start, statusTask);
          },
          child: Image.asset(
            ImageConstant.imageEdit,
            color: ColorApp.grey,
            height: 13,
            width: 13,
          ),
        ),
      ],
    );
  }
}
