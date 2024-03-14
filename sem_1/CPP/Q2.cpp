// Q2. Write a C++ program to Store Information in Structure and Display it.

#include <iostream>

using namespace std;

struct Employee
{
  int eid;
  string name;
  double salary;
};

int main()
{
  Employee e1;

  cout << "Enter Employee Id: ";
  cin >> e1.eid;

  cout << "Enter Employee Name: ";
  cin >> e1.name;

  cout << "Enter Employee Salary: ";
  cin >> e1.salary;

  cout << "Employee Details:\n";
  cout << "Id: " << e1.eid << endl;
  cout << "Name: " << e1.name << endl;
  cout << "Salary: " << e1.salary << endl;

  return 0;
}