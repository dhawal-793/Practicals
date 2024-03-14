// Q4. Write a program to display Largest Element of an array.

#include <iostream>

using namespace std;

int main()
{
  int arr[5];
  int largest=-9999999;
  cout << "Enter elements for array\n";
  for (int i = 0; i < 5; i++)
  {
    cin >> arr[i];
    if (arr[i] > largest)
      largest = arr[i];
  }

  cout << "Largest element is "<<largest;

  return 0;
}