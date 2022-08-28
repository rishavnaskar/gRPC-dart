import 'package:grpc/grpc.dart';
import 'package:grpc_tutorial/src/generated/todo.pbgrpc.dart';

class TodoService extends TodoServiceBase {
  TodoItems todos = new TodoItems();

  /**
     * Createa  new Todo
     * @param call - meta information on the request
     * @param request - information that's sent
     * @returns todoItem - The item that was added
     **/
  @override
  Future<TodoItem> createTodo(ServiceCall call, TodoItem request) async {
    TodoItem todoItem = new TodoItem();
    todoItem.text = request.text;
    todoItem.id = todos.$_getList(1).length + 1;
    todos.items.add(todoItem);
    return todoItem;
  }

  /**
    * Read the todos as a Future
    **/
  @override
  Future<TodoItems> readTodos(ServiceCall call, VoidNoParam request) async {
    return todos;
  }

  /**
     * Get all of the todos as a stream
     **/
  @override
  Stream<TodoItem> readTodosStream(
      ServiceCall call, VoidNoParam request) async* {
    for (var todo in todos.items) {
      yield todo;
    }
  }
}

/**
* gRPC Server
**/
class TodoServer {
  Future<void> main(List<String> args) async {
    final server = Server([TodoService()]); // Create a new server from the TodoService
    await server.serve(); // Start the server
    print('Server listening on port ${server.port}...');
  }
}

main() {
  TodoServer todoServer = new TodoServer();
  todoServer.main([]);
}
