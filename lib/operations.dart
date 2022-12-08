import 'package:flutter/material.dart';
import 'package:modelclass2/modelcls.dart';

class Operation
{
  int i=0;
  List<Grids> cn=[Grids(clr: Colors.red, iconclr: Colors.white, txt: 'Person'),
  Grids(clr: Colors.green,  iconclr: Colors.red, txt: 'Home'),
  Grids(clr: Colors.blue, iconclr: Colors.pink, txt: 'Book'),
    Grids(clr: Colors.brown,  iconclr: Colors.white, txt: 'Alarm'), ];


int getlen()
{
  return cn.length;
  }
 Color  colors()
  {
    return cn[i].c;
  }
  // icons()
  // {
  //   return  cn[i].i;
  // }
  Color iconcolor()
  {
    return cn[i].ic;
  }
 String names()
  {
    return cn[i].name;
  }
}
