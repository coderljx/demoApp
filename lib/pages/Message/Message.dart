import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);
  @override
  State<Message> createState() => _Message();
}

// 消息的实现类 具体为私有类
class _Message extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Text("message");
  }
}
