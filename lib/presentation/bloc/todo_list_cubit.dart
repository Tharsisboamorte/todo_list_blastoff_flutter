import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(const TodoListInitial());

  List<String> tasks = [];

  void createTask(String task) {
    emit(const AddingTask());
    tasks.add(task);
    emit(ListLoaded(tasks));
  }

  void removeTask(int indexTask) {
    emit(const RemovingTask());
    tasks.removeAt(indexTask);
    emit(const TaskRemoved());
  }

  void removeTasks(){
    emit(const RemovingTask());
    tasks = [];
    emit(const TaskRemoved());
  }

  void getList(){}
}
