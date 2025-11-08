import 'dart:async';

void main() {
  List<Map<String, dynamic>> teachers = [
    {
      "teacherName": "Mr. Raj",
      "classes": [
        {"subject": "Math", "studentsCount": 30},
        {"subject": "Science", "studentsCount": 25},
      ],
    },
    {
      "teacherName": "Ms. Priya",
      "classes": [
        {"subject": "English", "studentsCount": 40},
        {"subject": "History", "studentsCount": 35},
      ],
    },
    {
      "teacherName": "Mr. Amit",
      "classes": [
        {"subject": "Physics", "studentsCount": 20},
        {"subject": "Chemistry", "studentsCount": 18},
      ],
    },
  ];

  String teacherName = "";
  num highestCount = 0;

  for (int i = 0; i < teachers.length; i++) {
    final teacher = teachers[i];
    List<Map<String, dynamic>> classe = teacher["classes"];

    num totalstudentCounut = 0;
    for (int j = 0; j < classe.length; j++) {
      totalstudentCounut = totalstudentCounut + classe[j]["studentsCount"];
    }

    if (totalstudentCounut > highestCount) {
      highestCount = totalstudentCounut;
      teacherName = teacher["teacherName"];
    }
  }

  print("\nTeacher with most students: $teacherName ($highestCount students)");
}
