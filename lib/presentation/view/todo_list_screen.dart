import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_flutter_challenge/presentation/bloc/todo_list_cubit.dart';
import 'package:todo_list_flutter_challenge/presentation/widgets/custom_textfield.dart';
import 'package:todo_list_flutter_challenge/presentation/widgets/iconed_button.dart';
import 'package:todo_list_flutter_challenge/presentation/widgets/loading_column.dart';
import 'package:todo_list_flutter_challenge/presentation/widgets/tasks_container.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TodoListCubit>();
    return BlocConsumer<TodoListCubit, TodoListState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("Lista de Tarefas"),
          ),
          body: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                CustomTextField(textController: _textEditingController),
                SingleChildScrollView(
                  child: state is AddingTask
                      ? const LoadingColumn()
                      : state is RemovingTask
                          ? const LoadingColumn()
                          : AppTaskList(
                              tasks: cubit.tasks,
                            ),
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppIconButton(
                icon: Icons.add,
                textController: _textEditingController,
                onPressed: () {
                  cubit.createTask(_textEditingController.text);
                  _textEditingController.clear();
                },
              ),
              const Spacer(flex: 2),
              AppIconButton(
                icon: Icons.remove,
                textController: _textEditingController,
                onPressed: () {
                  cubit.removeTasks();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
