import 'package:flutter/material.dart';
import 'package:list_task_ui/core/widgets/task_widget.dart';
import 'package:list_task_ui/provider/main_provider.dart';
import 'package:provider/provider.dart';

class ListTask extends StatelessWidget {
  const ListTask({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<MainProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView.builder(
              itemCount: bloc.tasks.length,
              itemBuilder: (context, index) {
                return TaskWidget(taskModel: bloc.tasks[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
