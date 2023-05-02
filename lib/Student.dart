class Student {
  int rollNo;
  String name;
  Student({required this.rollNo, required this.name});
  @override
  String toString() {
    return 'RollNo : $rollNo and Name : $name';
  }
}
