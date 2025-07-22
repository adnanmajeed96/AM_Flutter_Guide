import 'dart:io';
void main() {
//declare class object and store in variable
 var myc= new myclass();
 var myplus=new myclass();


 //for reuse function
myc.printName("adnan"); // function store in class variable
 myc.printName("majeed"); // function store in class variable
 myc.printName("awan"); // function store in class variable
 print(myplus.add(5, 4));
 print(myplus.add(20,30));
}

//class
class myclass
{

void printName( String name)   //declare func with no return
{
  print(name); // defination
}

//make addition function
int add( int a,int b)  //must return value;
{
  int sum=a+b;
  return sum;
}
}