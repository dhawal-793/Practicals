// Q1. Write a C++ program for finding minimum and maximum from three numbers .


#include <iostream>

using namespace std;

int main(){
  int a, b, c;
  int min=0, max = 0;
  cout << "Enter first number: ";
  cin >> a;
  cout << "Enter second number: ";
  cin >> b;
  cout << "Enter third number ";
  cin >> c;
if(a<b && a<c){
  min = a;
  if(b<c)
    max = c;
  else
    max = b;
}
else if(b<a && b<c){
  min = a;
  if(a<c)
    max = c;
  else
    max = a;
}
else if(c<b && c<a){
  min = c;
  if(b<a)
    max = a;
  else
    max = b;
}
cout << "Minimum number is: " << min << " and maximum number is: "<<max;
return 0;
}