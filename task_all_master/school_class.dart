void main() {
  School mySchool = School();

  Student student1 = Student('Ali', 101);
  Student student2 = Student('Nigar', 102);

  Subject subject1 = Subject('Matematika', 3, 30);
  Subject subject2 = Subject('Fizika', 4, 25);

  student1.showStudentInfo();
  student2.showStudentInfo();

  mySchool.studentList(student1);
  mySchool.studentList(student2);

  mySchool.subjectList(subject1);
  mySchool.subjectList(subject2);

  mySchool.studentSubjectRegister(student1, subject1);
  mySchool.studentSubjectRegister(student2, subject2);
}

class Student {
  String name;
  int studentId;

  Student(this.name, this.studentId);

  void showStudentInfo() {
    print('Ad: $name');
    print('Tələbə ID: $studentId');
  }
}

class Subject {
  String name;
  int creditHour;
  int maxStudentCount;

  Subject(this.name, this.creditHour, this.maxStudentCount);

  void showSubjectInfo() {
    print('Fənn Adı: $name');
    print('Kredit Saatı: $creditHour');
    print('Maksimum Tələbə Sayı: $maxStudentCount');
  }
}

class School {
  List<Student> students = [];
  List<Subject> subjects = [];

  void studentList(Student student) {
    students.add(student);
    print('Tələbə qəbul edildi: ${student.name}');
  }

  void subjectList(Subject subject) {
    subjects.add(subject);
    print('Fənn təklif edildi: ${subject.name}');
  }

  void studentSubjectRegister(Student student, Subject subject) {
    if (students.contains(student) && subjects.contains(subject)) {
      print('${student.name}, ${subject.name} fənninə yazıldı.');
    } else {
      print('Əməliyyat uğursuz oldu. Tələbə və ya fənn mövcud deyil.');
    }
  }
}

