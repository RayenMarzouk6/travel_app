import 'package:flutter/material.dart';
// import 'package:travel_app/Widgets/category_card.dart';
import '../app_data.dart' ;
import '../Widgets/category_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return
 
      
        Container(
          child : GridView(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2 ,
              mainAxisSpacing: 10 ,
              crossAxisSpacing: 10
              ) ,
            children :
             
              Category_data.map((item)=>
                CategoryCard( item.id , item.title , item.imageURL) ,
              ).toList()
            
            ) ,
        );
      
   
  }
}