import 'dart:ui';

import 'package:flutter/material.dart';
import 'ClickEvent.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);
  @override
  State<Index> createState() => _Index();
}

// 首页的实现类 具体为私有类
class _Index extends State<Index> {
  // 引入点击事件实现类
  IndexClickEvent event = IndexClickEvent();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Listener(
                    onPointerDown: (PointerDownEvent pointerDownEvent) {
                      event.ListenerTextClick(pointerDownEvent, 1);
                    },
                    child: const Text(
                      "动态",
                      style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromRGBO(154, 151, 174, .5),
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Listener(
                      // 监听文本的点击事件事件
                      onPointerDown: (PointerDownEvent pointerDownEvent) {
                        event.ListenerTextClick(pointerDownEvent, 2);
                      },
                      child: const Text(
                        "推荐",
                        style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromRGBO(154, 151, 174, .5),
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Listener(
                      // 监听文本的点击事件事件
                      onPointerDown: (PointerDownEvent pointerDownEvent) {
                        event.ListenerTextClick(pointerDownEvent, 3);
                      },
                      child: const Text(
                        "热榜",
                        style: TextStyle(
                          fontSize: 23.0,
                          color: Color.fromRGBO(154, 151, 174, .5),
                        ),
                      )),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: FloatingActionButton(
                  // 设置一个浮空图标
                  backgroundColor: Colors.deepOrangeAccent,
                  foregroundColor: Colors.white,
                  mini: true,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                  )),
            )
          ],
        )
      ],
    );
  }
}
