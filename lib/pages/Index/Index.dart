import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);
  @override
  State<Index> createState() => _Index();
}

// 首页的实现类 具体为私有类
class _Index extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Text("index");
  }
}
