import 'package:flutter/material.dart';

import 'Student.dart';

class InheritedStudent extends InheritedWidget {
  const InheritedStudent(
      {super.key, required super.child, required this.student});

  final Student student;

  static InheritedStudent? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedStudent>();
  }

  static InheritedStudent of(BuildContext context) {
    InheritedStudent? result = maybeOf(context);
    assert(result != null, 'Inherited Student is not found top of the tree');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return (oldWidget as InheritedStudent).student != student;
  }
}
