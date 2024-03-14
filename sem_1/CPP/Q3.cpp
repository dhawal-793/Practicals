// Q3. Write a program to calculate Factorial Using Recursion.

#include <iostream>

using namespace std;

int factorial(int num)
{

  if (num <= 1)
    return 1;

  return num * factorial(num - 1);
}

int main()
{
  int num;
  cout << "Enter a number less than 15: ";
  cin >> num;

  cout << "Factorial of " << num << " is " << factorial(num);
  return 0;
}