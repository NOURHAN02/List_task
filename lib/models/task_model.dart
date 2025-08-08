import 'package:list_task_ui/core/utils/enums.dart';

class TaskModel {
  final int index;
  final String id;
  final String title;
  final String assignedTo;
  final String priority;
  TaskStatusName status;
  final String statusDetail;
  DateTime startDate;
  DateTime? dueDate;
  TaskStatus type;
  TaskModel({
    required this.index,
    required this.id,
    required this.title,
    required this.assignedTo,
    required this.priority,
    required this.status,
    required this.statusDetail,
    required this.startDate,
    this.dueDate,
    required this.type,
  });
}
