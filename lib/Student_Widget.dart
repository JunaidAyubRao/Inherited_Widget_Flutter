import 'package:flutter/material.dart';

import 'Inherited_Student.dart';
import 'Student.dart';

class StudentWidget extends StatelessWidget {
  const StudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Student student = InheritedStudent.of(context).student;
    return Container(
      color: Colors.blue,
      width: 200,
      child: ListTile(
          leading: CircleAvatar(
            child: Text(student.rollNo.toString()),
          ),
          title: Text(student.name)),
    );
  }
}
