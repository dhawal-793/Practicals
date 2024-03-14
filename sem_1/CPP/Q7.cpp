// Q7. Write a program to perform the simple arithmetic operation on three variable using default constructor.

#include <iostream>

using namespace std;

class Operation
{
public:
  int a, b, sum = 0;
  Operation(int num1, int num2)
  {
    a = num1;
    b = num2;
    sum = a + b;
  }
  void display()
  {
    cout << "The Sum of " << a << " and " << b << " is " << sum;
  }
};

int main()
{
  Operation a(3, 4);
  a.display();
  return 0;
}