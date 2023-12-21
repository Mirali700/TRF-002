import 'dart:io';

void main() {
  calculateAverage();
}

String enterName(String fullName) {
  stdout.write("Enter your $fullName: ");
  return stdin.readLineSync().toString();
}

int enterSubjectCount() {
  stdout.write("Enter the number of subjects (minimum 5): ");
  return int.parse(stdin.readLineSync().toString());
}

double enterSubjectGrade(int subjectCount) {
  double totalGrade = 0;
  for (int i = 0; i < subjectCount; i++) {
    stdout.write("Enter the grade for subject ${i + 1}: ");
    double grade = double.parse(stdin.readLineSync().toString());
    totalGrade += grade;
  }
  return totalGrade;
}

void enterDegree(String name, double average) {
  if (average <= 51) {
    print("$name, the student's average is $average and the degree is 'Fail'.");
  } else if (51 < average && average <= 61) {
    print("$name, the student's average is $average and the degree is 'E'.");
  } else if (61 < average && average <= 71) {
    print("$name, the student's average is $average and the degree is 'D'.");
  } else if (71 < average && average <= 81) {
    print("$name, the student's average is $average and the degree is 'C'.");
  } else if (81 < average && average <= 91) {
    print("$name, the student's average is $average and the degree is 'B'.");
  } else {
    print("$name, the student's average is $average and the degree is 'A'.");
  }
}

void calculateAverage() {
  String fullName = enterName("full name");
  int subjectCount = enterSubjectCount();

  if (subjectCount < 5) {
    print("You must enter at least 5 subjects.");
    return;
  }

  double totalGrade = enterSubjectGrade(subjectCount);

  double average = totalGrade / subjectCount;

  enterDegree(fullName, average);
}
