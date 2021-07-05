import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'task_sharp': Icons.task_sharp,
  'assessment_outlined': Icons.assessment_outlined,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono]);
}
