import 'package:flutter/material.dart';
import 'package:list_task_ui/core/utils/enums.dart';
import 'package:list_task_ui/models/task_model.dart';

class MainProvider extends ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(
      id: 'Order-1043',
      title: 'Arrange Pickup',
      assignedTo: 'Sandhya',
      priority: 'High Priority',
      status: TaskStatusName.Overdue,
      statusDetail: '10h 5m',
      startDate: DateTime(2025, 8, 10),
      dueDate: DateTime.now(),
      type: TaskStatus.started,
      index: 0,
    ),
    TaskModel(
      id: 'Entity-2559',
      title: 'Adhoc Task',
      assignedTo: 'Arman',
      priority: 'High Priority',
      status: TaskStatusName.Overdue,
      statusDetail: '16h 4m',
      startDate: DateTime(2025, 8, 12),
      dueDate: DateTime.now(),
      type: TaskStatus.started,
      index: 1,
    ),
    TaskModel(
      id: 'Order-1020',
      title: 'Collect Payment',
      assignedTo: 'Sandhya',
      priority: 'High Priority',
      status: TaskStatusName.Overdue,
      statusDetail: '17h 2m',
      startDate: DateTime(2025, 8, 15),
      dueDate: DateTime.now(),
      type: TaskStatus.started,
      index: 2,
    ),
    TaskModel(
      id: 'Order-194',
      title: 'Arrange Delivery',
      assignedTo: 'Prashant',
      priority: '',
      status: TaskStatusName.Completed,
      statusDetail: 'Aug 21',
      startDate: DateTime(2025, 8, 20),
      dueDate: null,
      type: TaskStatus.completed,
      index: 3,
    ),
    TaskModel(
      id: 'Entity-2184',
      title: 'Share Company Profile',
      assignedTo: 'Asif Khan K',
      priority: '',
      status: TaskStatusName.Completed,
      statusDetail: 'Aug 23',
      startDate: DateTime(2025, 8, 22),
      dueDate: DateTime.now(),
      type: TaskStatus.completed,
      index: 4,
    ),
    TaskModel(
      id: 'Entity-472',
      title: 'Add Followup',
      assignedTo: 'Avik',
      priority: '',
      status: TaskStatusName.Completed,
      statusDetail: 'Aug 26',
      startDate: DateTime(2025, 8, 25),
      dueDate: null,
      type: TaskStatus.completed,
      index: 5,
    ),
    TaskModel(
      id: 'Enquiry-3563',
      title: 'Convert Enquiry',
      assignedTo: 'Prashant',
      priority: '',
      status: TaskStatusName.Due,
      statusDetail: ' in 2 days',
      startDate: DateTime(2025, 8, 28),
      dueDate: null,
      type: TaskStatus.notStarted,
      index: 6,
    ),
    TaskModel(
      id: 'Order-176',
      title: 'Arrange Pickup',
      assignedTo: 'Prashant',
      priority: 'High Priority',
      status: TaskStatusName.Due,
      statusDetail: 'Tomorrow',
      startDate: DateTime(2025, 9, 1),
      dueDate: DateTime.now(),
      type: TaskStatus.notStarted,
      index: 7,
    ),
  ];

  void makeCompleteTaskFunction({required int index}) {
    tasks[index].type = TaskStatus.completed;
    tasks[index].dueDate = DateTime.now();
    tasks[index].status = TaskStatusName.Completed;
    notifyListeners();
  }

  void makeStartTaskFunction({required int index}) {
    tasks[index].type = TaskStatus.started;
    tasks[index].status = TaskStatusName.Overdue;

    notifyListeners();
  }

  void updateStartDateFunction({
    required int index,
    required DateTime newDate,
  }) {
    tasks[index].startDate = newDate;
    notifyListeners();
  }

  Future<void> pickStartDate(
    BuildContext context,
    int index,
    DateTime start,
    TaskStatus taskStatus,
  ) async {
    if (taskStatus != TaskStatus.completed) {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: start,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );

      if (picked != null && picked != start) {
        updateStartDateFunction(index: index, newDate: picked);
      }
    }
  }
}
