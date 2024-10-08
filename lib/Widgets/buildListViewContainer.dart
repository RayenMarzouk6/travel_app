import 'package:flutter/material.dart';

class Buildlistviewcontainer extends StatelessWidget {

 final Widget childWidget ;

  const Buildlistviewcontainer( this.childWidget);
  


  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                color: Colors.white ,
                border: Border.all(color: Colors.grey) ,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 200,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 13),
              child: childWidget  ,
            );
  }
}