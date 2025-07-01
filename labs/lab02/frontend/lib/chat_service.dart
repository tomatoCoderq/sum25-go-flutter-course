import 'dart:async';

import 'package:flutter/widgets.dart';

// ChatService handles chat logic and backend communication
class ChatService {
  final StreamController<String> streamController = StreamController<String>();
  ConnectionState connectionState = ConnectionState.none;

  // Stream<String> get messageStream => streamController.stream;

  void dispose() {
    streamController.close();
  }

  ChatService();

  Future<void> connect() async {
    // TODO: Connect to backend or mock
    await Future.delayed(Duration(seconds: 1));
    print('Mock connect successful');
  }

  Future<void> sendMessage(String msg) async {
    // TODO: Send message to backend or mock
    await Future.delayed(Duration(seconds: 1));
    print("Mock backend send");
  }

  Stream<String> get messageStream {
    // TODO: Return stream of incoming messages
    return streamController.stream;
  }
}
