
/* Write a Dart program to calculate the average grade of the student. After calculating
the average, round it to the nearest integer. Determine if the student's average grade
is greater than or equal to 70 print Passed. Print Failed otherwise*/
void main() {
 List<int> grades = [85, 92, 78, 65, 88, 72];
  
  
  int sum = 0;
  for (int grade in grades) {
    sum += grade;
  }
  

  double average = sum / grades.length;
  
  // Round the average to the nearest integer
  int roundedAverage = average.round();
  
  print("Student's average grade: $average");
  print("Rounded average: $roundedAverage");
  
  if (roundedAverage >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}
