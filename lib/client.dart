import 'package:grpc/grpc.dart';
import 'package:grpc_tutorial/src/generated/todo.pbgrpc.dart';

class Client {
  ClientChannel channel;
  TodoClient stub;

  Future<void> main(List<String> args) async {
    channel = ClientChannel(
      'localhost',
      port: 80,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    stub = TodoClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
    );

    try {
      // Create a sample todo and print
      final TodoItem todoItem = new TodoItem();
      todoItem.text = "Test 1";
      var res = await stub.createTodo(todoItem);
      print(res);

      // Get a list of todos as a future
      // final v = new VoidNoParam();
      // var todos = await stub.readTodos(v);
      // print(todos.items);

      // Get the todos as a stream, listen to it, and print the values. If you run another client and create new todos, you'll see this stream get updated
      // stub.readTodosStream(v).listen((value) {
      //   print(value);
      // });
    } catch (e) {
      print(e);
    }

    // Cleanup
    await channel.shutdown();
  }
}

main() {
  var client = Client();
  client.main([]);
}
