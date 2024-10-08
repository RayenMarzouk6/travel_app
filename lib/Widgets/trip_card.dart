import 'package:flutter/material.dart';
import 'package:travel_app/Models/trip_model.dart';
import 'package:travel_app/Screens/trips_details_screen.dart';

class TripCard extends StatelessWidget {

  final String id ;
  final String title ;
  final String imageURL ;
  final int duration ;
  final TripType tripType ;
  final Season season ;
  final Function removeItem ;

  const TripCard({required this.id , required this.title, required this.imageURL, required this.duration, required this.tripType, required this.season , required this.removeItem});

    String get seasonText {
      switch (season) {
        case Season.Winter:
          return "Winter";

        // Add other cases as needed
        case Season.Spring:
          return "Spring";

        case Season.Summer:
          return "Summer";

        case Season.Autumn:
          return "Autumn";

        default:
          return "Unknown season";
      }
    }


    String get tripsTypeText {
      switch (tripType) {
        case TripType.Exploration:
        return "Exploration" ;
        case TripType.Recovery:
        return "Recovery" ;
        case TripType.Activities:
        return "Activities" ;
        case TripType.Therapy:
        return "Therapy" ;

         default:
          return "Unknown trip type";

      }
    }


  void selectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed(TripsDetailsScreen.routeToDetailsTrips, arguments: id)
        .then((result) {
        if ( result != null){
          removeItem(result) ;
        }
    });
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>selectTrip(context),
      child: Card(
       shape: RoundedRectangleBorder(
         borderRadius : BorderRadius.circular(15) ,
       ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15) ,
                    topRight: Radius.circular(15)
                ),
                  child: Image.network(imageURL , 
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  ) ,
                ),


                Container(
                  height: 250,
                  padding: EdgeInsets.all(10) ,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end  : Alignment.bottomCenter ,
                      colors: [
                      Colors.black.withOpacity(0) ,
                      Colors.black.withOpacity(0.8)
                      ] ,
                      
                      stops: [0.5 , 1] ,
                      
                      ) ,
                  ),

                  child: Text(title , style: 
                  TextStyle(
                    color: Colors.white ,
                    fontSize: 26 ,
                    fontWeight: FontWeight.bold
                  ),
                  overflow: TextOverflow.fade,
                  ),
                )  ,


              ],
            ),
            Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.family_restroom , color: Colors.amber) ,
                      Text(tripsTypeText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.sunny , color: Colors.amber,) ,
                      Text(seasonText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_month , color: Colors.amber) ,
                      Text("$duration day")
                    ],
                  ),
                 
                ],
              ),
            ),
         
          ],
        ),

      ),
    );
  }
}