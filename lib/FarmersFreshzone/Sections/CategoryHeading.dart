import 'package:flutter/material.dart';
Widget CtegoryHeading({required String S})
{
  return Padding(
    padding: const EdgeInsets.only(left: 10,top: 5),
    child: Text(S,style: TextStyle(fontSize: 20,color: Colors.black87),),
  );
}