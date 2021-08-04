import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'task_sharp': Icons.task_sharp,
  'assessment_outlined': Icons.assessment_outlined,
  'call_outlined': Icons.call_outlined,
  'work': Icons.work,
  'lightbulb': Icons.lightbulb,
  'star': Icons.star,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: const Color.fromRGBO(93, 96, 245, 1),
  );
}
