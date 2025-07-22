void main()
{
  //return only true false like boolean variable
  print("Conditional programming  tutorial");

  var a=100;
  var b=250;
  if(a>200 && b>200)       //if else conditional AND GATE
    {
      print("value greater than 200");
    }
  else if(a<100 && b<100)
    {
      print("value less  than 100");
    }
  else
    {
      print("value equal to  100");
    }

  //or gate

  if(a>200 || b>200)       //if else conditional
      {
    print("value greater than 200");
  }
  else if(a<100 || b<100)
  {
    print("value less  than 100");
  }
  else if(a==100 || b==250)
  {
    print("value equal to 100 and 200");
  }
  else
    {
      print("value a less than to  100");
    }
}
