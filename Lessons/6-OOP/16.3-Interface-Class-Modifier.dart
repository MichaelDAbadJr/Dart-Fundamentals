// interface class modifier

//  - interface classes

//    - can not be extended (inherited) outside of the module (library)
//    - can be constructed (impure interface)
//    - can be implemented

interface class TodoInterface {
  final String id;
  final String todo;
  late bool _isComplete;

  bool get isComplete => _isComplete;

  TodoInterface({
    required this.id,
    required this.todo,
    required isComplete,
  }) {
    this._isComplete = isComplete;
  }

  void checkTodo() {}
}

class Todo extends TodoInterface {
  Todo({
    required super.id,
    required super.todo,
    required super.isComplete,
  });
}

void main() {
  // Impure interface
  //   - Can be constructed
  //   - Implies signatures do not have to be implemented if not defined

  final todo = Todo(
    id: '',
    todo: '',
    isComplete: false,
  );

  print(todo.isComplete);

  todo.checkTodo();
}
