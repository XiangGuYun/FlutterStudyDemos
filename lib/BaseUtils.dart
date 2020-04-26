import 'package:flutter/material.dart';

extension StringUtils on String{
  int getLength() {
    return this.length;
  }

  Text getText(){
    return Text(this);
  }

}

extension ObjectUtils on Object{
  void pln(){
    print(this);
  }
}