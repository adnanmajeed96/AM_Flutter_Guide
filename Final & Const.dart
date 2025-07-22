void main()
{
  print("Final & Const Tutorial");

  //final

  final name="raman"; // name variable not reassign in this project.
                      // The final variable 'name' can only be set once.

  final String name1;   //store only same of type of string data
  name1="adnan";
  print(name1);


  //const
  const name2="raman";  //initialize  at that time Constant variables can't be assigned a value after initialization.

  var name3;
  name3=[  //dyanmic variable
    "raman",
    "adnan",

  ];
  name3= [2,4,'adnan'];
  print(name3);
}