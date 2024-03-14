// Q5.Write a Program to Implement a Class STUDENT having Following Members: Data
// members:-
// * Sname (Name of the student )
// * Marks array (Marks of the student )
// * Total (Total marks obtained )
// * Tmax (Total maximum marks) Member functions
// * assign() Assign Initial Values
// * compute() to Compute Total, Average
// * display() to Display the Data

#include <iostream>
using namespace std;

class Student
{

  string name;
  float marks[5];
  float total;
  float max_marks;

public:
  Student()
  {
    name = "";
    for (int i = 0; i < 5; i++)
      marks[i] = 0;
    total = 0;
    max_marks = 0;
  }

  void assign()
  {
    cout << endl
         << "Enter Student name: ";
    cin >> name;

    for (int i = 0; i < 5; i++)
    {
      cout << "Enter marks of " << i + 1 << " subject: ";
      cin >> marks[i];
    }

    cout << "Enter maximum total marks: ";
    cin >> max_marks;
  }

  void compute()
  {
    total = 0;
    for (int i = 0; i < 5; i++)
      total += marks[i];
  }

  void display()
  {
    cout << "Student Name: " << name << endl;
    cout << "Marks are: \n";

    for (int i = 0; i < 5; i++)
      cout << "Subject " << i + 1 << "=> " << marks[i] << endl;

    cout << "-------------------\n";
    cout << "Total Marks: " << total << endl;
    cout << "-------------------\n";

    float percentage = (total / max_marks) * 100;

    cout << "Percentages: " << percentage << endl;
  }
};

int main()
{
  Student obj;
  obj.assign();
  obj.compute();
  obj.display();
  return 0;
}