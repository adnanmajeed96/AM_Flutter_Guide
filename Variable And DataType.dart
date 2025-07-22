void main()
{
  //declare variable
int? a; //when variable initialized is null so skip error insert ? to make nullable

//assign value
int b = 1;
a = 1; //asign value
print(a);
print(b);

// inline declaration String value
String name = "adnan majeed";
print(name);

// store big value
BigInt TempValue;
TempValue = BigInt.parse("235425252522354");
print(TempValue);

//point value store

double percentage= 83.4;
print(percentage);

//use num to store both value int or double (point value)
num Percentage =86.4;
print(Percentage);

//boolean

bool isLogin=false;
isLogin=true;
print(isLogin);
// var and dynamic datatype in next class
}