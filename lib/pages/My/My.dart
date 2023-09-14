import 'package:flutter/material.dart';

class My extends StatefulWidget {
  const My({Key? key}) : super(key: key);
  @override
  State<My> createState() => _My();
}

// 我的实现类 具体为私有类
class _My extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (PointerEvent pointerEvent) {
        print("按下时间");
        print("object");
      },
      child: Text("点击"),
    );
  }
}
