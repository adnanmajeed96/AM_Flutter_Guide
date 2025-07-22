import 'dart:io';
void main()
{
//list or array
var listname=[10,20,30,40,50,60];
listname.add(70);  //add fucntion insert value at the last of array
print("$listname");

//add above list value into other list
var newlistname=[];
newlistname.add("adnan");
newlistname.add("12");
newlistname.add("65.6");
newlistname.addAll(listname);

print("new list name: $newlistname");

//insert value of specific index for example index=2
  print("Insert:");
newlistname.insert(2, "awan");
print("$newlistname");

// update list change value adnan index 0
newlistname[0]="majeed";
print("$newlistname");

//replace

  print("replace:");
newlistname.replaceRange(0, 4, [1,2,3,4,5]);
  print("$newlistname");


  //remove or delete value
  print("remove last:");
  newlistname.removeLast(); //remove last vslue;
  print("$newlistname");


  print("remove:");
  newlistname.remove(50); // remove specific value from list
  print("$newlistname");

  print("remove At:");
  newlistname.removeAt(1); // remove value on index 1
  print("$newlistname");

  print("remove range:");
  newlistname.removeRange(0, 4); // remove contact from index to which index you want to delete
  print("$newlistname");

  print("length: ${newlistname.length}"); //print length of list
  print("reversed: ${newlistname.reversed}");
  print("first: ${newlistname.first}");
  print("last: ${newlistname.last}");
  print("empty: ${newlistname.isEmpty}");
  print("not empty: ${newlistname.isNotEmpty}");
  print("element at index 2: ${newlistname.elementAt(2)}");


}