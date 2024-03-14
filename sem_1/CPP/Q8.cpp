// Q8. Write a program to show the functionality of Friend function.

#include <iostream>

using namespace std;

class Myclass;

void showprivatedata(const Myclass &obj);

class Myclass
{
private:
  int privatedata;

public:
  Myclass(int data)
  {
    privatedata = data;
  }
  // Myclass(int data) : privatedata(data) {}

  friend void showprivatedata(const Myclass &obj);
};

void showprivatedata(const Myclass &obj)
{
  cout << "Private data from friend function " << obj.privatedata;
}

int main()
{
  Myclass obj(42);
  showprivatedata(obj);

  return 0;
}