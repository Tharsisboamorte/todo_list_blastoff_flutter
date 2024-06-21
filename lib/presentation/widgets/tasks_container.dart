import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_flutter_challenge/presentation/bloc/todo_list_cubit.dart';

class AppTaskList extends StatelessWidget {
  const AppTaskList({super.key, required this.tasks});

  final List<String> tasks;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TodoListCubit>();
    return SizedBox(
      height: 300,
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            onLongPress: () {
              cubit.removeTask(index);
            },
          );
        },
      ),
    );
  }
}
