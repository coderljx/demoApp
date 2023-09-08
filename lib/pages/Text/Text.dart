import 'package:flutter/material.dart';

class Texts extends StatefulWidget {
  const Texts({Key? key}) : super(key: key);
  @override
  State<Texts> createState() => _Text();
}

// 文章的实现类 具体为私有类
class _Text extends State<Texts> {
  @override
  Widget build(BuildContext context) {
    return Text("sa");
  }
}
