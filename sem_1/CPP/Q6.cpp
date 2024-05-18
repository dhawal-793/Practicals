// Q6. Write a program which creates and uses array of object of a class.(implementing the list of Managers of a ccompany having details such as Name, Age etc....

#include <iostream>

using namespace std;

class Manager
{
public:
  string name;
  int age;
  string department;

  Manager(string n, int a, string d)
  {
    name = n;
    age = a;
    department = d;
  }

  void display()
  {
    cout << "Name: " << name << endl;
    cout << "Age: " << age << endl;
    cout << "Department: " << department << endl;
  }
};

int main()
{
  Manager managerList[3] = {
      Manager("John", 33, "Finance"),
      Manager("Bob", 37, "HR"),
      Manager("Martin", 29, "IT")};
  cout << "Details of Managers:\n\n";
  for (int i = 0; i < 3; i++)
  {
    managerList[i].display();
    cout << endl;
  }

  return 0;
}