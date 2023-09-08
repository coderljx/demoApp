import 'package:demo/pages/Index/Index.dart';
import 'package:demo/pages/Message/Message.dart';
import 'package:demo/pages/My/My.dart';
import 'package:demo/pages/Text/Text.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  // Tabs({Key key}) : super(key: key);
  @override
  State<Tabs> createState() => _Bootom();
}

class _Bootom extends State<Tabs> {
  // 具体的实现页面,方便后期切换到不同的界面中去
  List<BottomNavigationBarItem> pages = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.abc),
      label: "首页",
      // activeIcon: Icon(Icons.access_alarms_rounded)
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        // activeIcon: Icon(Icons.abc_rounded),
        label: "文库"),
    BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        // activeIcon: Icon(Icons.abc_rounded),
        label: "消息"),
    BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        // activeIcon: Icon(Icons.abc_rounded),
        label: "我的"),
  ];

  final List<Widget> pageHome = const [Index(), Texts(), Message(), My()];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // 使用该内置类实现具体逻辑 以及点击时切换不同的页面
    return DefaultTabController(
        length: pages.length,
        child: Scaffold(
            body: pageHome[pageIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: pageIndex, // 默认显示那个页面
              onTap: (int koko) {
                setState(() {
                  pageIndex = koko;
                });
              },
              backgroundColor: Colors.white,
              // selectedItemColor: Colors.green,
              // unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: pages,
            )));
  }
}
