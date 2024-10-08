import 'package:flutter/material.dart';
import 'package:travel_app/Screens/fillter_trips_screen.dart';

class DrawerPopup extends StatelessWidget {
  const DrawerPopup({super.key});


    // This is a helper method inside the class to create a ListTile widget
  ListTile listTileWidget(String title, IconData icon, Function() onTapLink) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.blue),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapLink,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,

                padding: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                color: Colors.deepPurple[100],
                child: Text("Travelano" , 
                style: TextStyle(
                  color: Colors.white ,
                  fontSize: 25 ,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              SizedBox(height: 20,),

              listTileWidget("Trips " , Icons.card_travel_rounded ,
               (){
                  Navigator.of(context).pushReplacementNamed("/") ;                
               }
              ),


              listTileWidget("Fillter " , Icons.filter_alt_rounded ,
               (){
                  Navigator.of(context).pushReplacementNamed(FillterTripsScreen.filterScreenRote) ;                
               }
              ),


      
            ],
          ),
        );
  }
}

