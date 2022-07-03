import 'package:flutter/material.dart';
import 'package:outpass/student.dart';
import 'package:outpass/faculty.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Outpass';

  @override
  Widget build(BuildContext context) {
    return student();
  }
}