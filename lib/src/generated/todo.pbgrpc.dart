///
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todo.pb.dart' as $0;
export 'todo.pb.dart';

class TodoClient extends $grpc.Client {
  static final _$createTodo = $grpc.ClientMethod<$0.TodoItem, $0.TodoItem>(
      '/dartgrpctutorial.Todo/CreateTodo',
      ($0.TodoItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value));
  static final _$readTodos = $grpc.ClientMethod<$0.VoidNoParam, $0.TodoItems>(
      '/dartgrpctutorial.Todo/ReadTodos',
      ($0.VoidNoParam value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItems.fromBuffer(value));
  static final _$readTodosStream = $grpc.ClientMethod<$0.VoidNoParam, $0.TodoItem>(
      '/dartgrpctutorial.Todo/ReadTodosStream',
      ($0.VoidNoParam value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value));

  TodoClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TodoItem> createTodo($0.TodoItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.TodoItems> readTodos($0.VoidNoParam request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readTodos, request, options: options);
  }

  $grpc.ResponseStream<$0.TodoItem> readTodosStream($0.VoidNoParam request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$readTodosStream, $async.Stream.fromIterable([request]), options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'dartgrpctutorial.Todo';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TodoItem, $0.TodoItem>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TodoItem.fromBuffer(value),
        ($0.TodoItem value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VoidNoParam, $0.TodoItems>(
        'ReadTodos',
        readTodos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VoidNoParam.fromBuffer(value),
        ($0.TodoItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VoidNoParam, $0.TodoItem>(
        'ReadTodosStream',
        readTodosStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.VoidNoParam.fromBuffer(value),
        ($0.TodoItem value) => value.writeToBuffer()));
  }

  $async.Future<$0.TodoItem> createTodo_Pre($grpc.ServiceCall call, $async.Future<$0.TodoItem> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.TodoItems> readTodos_Pre($grpc.ServiceCall call, $async.Future<$0.VoidNoParam> request) async {
    return readTodos(call, await request);
  }

  $async.Stream<$0.TodoItem> readTodosStream_Pre($grpc.ServiceCall call, $async.Future<$0.VoidNoParam> request) async* {
    yield* readTodosStream(call, await request);
  }

  $async.Future<$0.TodoItem> createTodo($grpc.ServiceCall call, $0.TodoItem request);
  $async.Future<$0.TodoItems> readTodos($grpc.ServiceCall call, $0.VoidNoParam request);
  $async.Stream<$0.TodoItem> readTodosStream($grpc.ServiceCall call, $0.VoidNoParam request);
}
