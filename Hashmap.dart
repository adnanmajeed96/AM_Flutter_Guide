import 'dart:io';
//map store multiple datatype of data in form of key (unique) value (index) manual
// know as(lock-key)

void main() {
  print("hashMap Tutorial");
  var map_name = { //manual map
    'key1': 'value1',
    'key2': 2,
    'key3': "string",
    'key4': true,

  };
  print("$map_name"); // print hashmap with key and value
  print(map_name['key2']); //print value at index or key 2

  //override value on specific key
  map_name['key1'] =
  'adnan'; //if capital k of key so value add on at last of hashmap

  print("$map_name");


//create hashmap for employee
  var map_employee = {
    'name': 'adnan majeed',
    'department': 'software',
    'dob': '25-02-1996'
  };
  print(map_employee);

// insert value through constructor in hashmap
var map_constructor=Map();

map_constructor['name']="adnan";
map_constructor['department']="software";
map_constructor['dob']="25-02-1996";
print(map_constructor);

//build in function

print(map_constructor.isEmpty);
  print(map_constructor.isNotEmpty);
  print(map_constructor.length);
  print(map_constructor.keys);
  print(map_constructor.values);
  print(map_constructor.containsKey('name'));
  print(map_constructor.containsValue('false'));
  print(map_constructor.remove('name')); //remove according to key
  print(map_constructor);
  




}