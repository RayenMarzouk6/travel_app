import 'package:flutter/material.dart';

class Buildsectiontitle extends StatelessWidget {
  
  final String title ;

  const Buildsectiontitle(this.title);

  @override
  Widget build(BuildContext context) {
    return   Container(
              margin: EdgeInsets.symmetric(horizontal: 11 , vertical: 7),
              alignment: Alignment.topLeft,
              child: Text(title , style: TextStyle(
                color: Colors.blue ,
                fontSize: 23,
                fontWeight: FontWeight.bold  
              ),),
            ) ;
  }
}