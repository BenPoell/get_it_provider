import 'dart:async';

import 'package:get_it_provider/hello.dart';

class HelloService {
  StreamController<Hello> helloController = StreamController<Hello>();

  Stream<Hello> get hello => helloController.stream;

  Future<bool> registerHello(Hello hello) async {
    if (helloController != null) {
      helloController.add(hello);
    }

    return true;
  }
}
