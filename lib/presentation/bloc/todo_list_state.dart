part of 'todo_list_cubit.dart';

abstract class TodoListState extends Equatable {
  const TodoListState();

  @override
  List<Object> get props => [];
}

class TodoListInitial extends TodoListState {
  const TodoListInitial();

  @override
  List<Object> get props => [];
}

class ListLoaded extends TodoListState {
  const ListLoaded(this.tasks);

  final List<String> tasks;

  @override
  List<Object> get props => tasks;
}

class AddingTask extends TodoListState{
  const AddingTask();
}

class TaskAdded extends TodoListState{
  const TaskAdded();
}

class RemovingTask extends TodoListState{
  const RemovingTask();
}

class TaskRemoved extends TodoListState {
  const TaskRemoved();
}