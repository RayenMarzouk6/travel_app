import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/drawer_popup.dart';

class FillterTripsScreen extends StatefulWidget {
  const FillterTripsScreen({super.key});

  static const filterScreenRote = "/filter" ;

  @override
  State<FillterTripsScreen> createState() => _FillterTripsScreenState();
}

class _FillterTripsScreenState extends State<FillterTripsScreen> {
  var _isInSommer = false ;
  var _isInWinter = false ;
  var _isForFamily = false ;

   SwitchListTile SwitchListTileWidget(String title , String subtitle , var currentValue , Function(bool) updateValue) {
    return SwitchListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          value: currentValue,
          onChanged: updateValue ,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Travilano") ,
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),
      drawer: DrawerPopup(),
      body: Column(
        children: [
          SizedBox(height: 50,),


          SwitchListTileWidget("Summer Trips" , "Display only trips in Summer season" , _isInSommer , 
           (newValue){
            setState(() {
              _isInSommer = newValue ;
            });
          }
          ),


          SwitchListTileWidget("Winter Trips" , "Display only trips in Winter season" ,  _isInWinter ,
           (newValue){
            setState(() {
              _isInWinter = newValue ;
            });
          }
          ) ,


          SwitchListTileWidget("Trips For Family" , "Display only trips For Family" ,  _isForFamily ,
           (newValue){
            setState(() {
              _isForFamily = newValue ;
            });
          }
          ) ,
        ],
      ) 
    );
  }

 
}