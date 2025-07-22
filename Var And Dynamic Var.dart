import 'dart:io';
void main()
{
  // var  you store first value is string so next value in also string
var subject="math";

//dynamic variable run time assign any type of data

var subject1;
subject1="math";
print(subject1);
subject1=7;
print(subject1);
subject1=76.5;
print(subject1);

stdout.write("enter the subject:");
subject1=stdin.readLineSync();
print ("subject: $subject1");

}