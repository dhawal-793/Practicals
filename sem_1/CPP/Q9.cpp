// // Q9. Write a program to compare the two boxes volume using ‘This Pointer’.

#include <iostream>

using namespace std;

class Box
{
  double length;
  double breadth;
  double height;

public:
  Box(double l, double b, double h)
  {
    length = l;
    breadth = b;
    height = h;
  }

  double calculateVolume() const
  {
    return length * breadth * height;
  }

  bool compareVolumes(const Box &otherBox) const
  {
    return this->calculateVolume() > otherBox.calculateVolume();
  }
};

int main()
{
  Box box1(3.0, 4.0, 5.0);
  Box box2(8.0, 7.0, 6.0);

  if (box1.compareVolumes(box2))
    cout << "Box1 has more volume\n";
  else
    cout << "Box2 has more volume\n";

  return 0;
}