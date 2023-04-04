abstract class Marks{
  double getPersentage();
}
class A extends Marks{
  double? subject1, subject2, subject3;
  A(double s1,double s2,double s3){
    subject1 = s1;
    subject2 = s2;
    subject3 = s3;
  }
  @override
  double getPersentage() {
    double totalMarks = subject1! + subject2! + subject3!;
    return (totalMarks / 300) * 100;
  }
}
class B extends Marks{
  double? subject1, subject2, subject3, subject4;

  B(double s1, double s2, double s3, double s4) {
    subject1 = s1;
    subject2 = s2;
    subject3 = s3;
    subject4 = s4;
  }

  @override
  double getPersentage() {
    double totalMarks = subject1! + subject2! + subject3! + subject4!;
    return (totalMarks / 400) * 100;
  }
}
void main() {
  A studentA = A(80, 85, 90);
  B studentB = B(70, 75, 80, 85);

  print('Percentage of marks obtained by student A: ${studentA.getPersentage()}');
  print('Percentage of marks obtained by student B: ${studentB.getPersentage()}');
}
