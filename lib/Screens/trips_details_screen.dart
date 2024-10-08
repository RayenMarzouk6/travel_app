import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/buildListViewContainer.dart';
import 'package:travel_app/Widgets/buildSectionTitle.dart';
import 'package:travel_app/app_data.dart';

class TripsDetailsScreen extends StatelessWidget {
  static const routeToDetailsTrips = "/details"; // Fixed the typo

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    // final tripId = ModalRoute.of(context)?.settings.arguments as String ;
    
    // Change this line to get the id from the map
    final arguments = route?.settings.arguments as Map<String, String>? ?? {};
    final tripId = arguments['id'] ?? "Unknown Trip ID"; // Extracting 'id' from the map

    final selectedTrip = Trips_data.firstWhere((trip)=> trip.id == tripId) ;


    return Scaffold(
      appBar: AppBar(
        title: Text(selectedTrip.title),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column( 
          children: [
        
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(selectedTrip.imageURL , 
              fit: BoxFit.cover,
              ) 
              
              ) ,
        
              SizedBox(height: 20,),
        
              Buildsectiontitle("Activite :") ,
        
              Buildlistviewcontainer (
                ListView.builder(
                   itemCount : selectedTrip.activities.length ,
                   itemBuilder: (ctx , index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(selectedTrip.activities[index]),
                    ),
                   )
        
                ),
              ),
              
              
              
              SizedBox(height: 20,),
              Buildsectiontitle("Program Day  :") ,
               Buildlistviewcontainer (
                ListView.builder(
                  itemCount: selectedTrip.program.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          child: Text("Day ${index + 1}"),
                        ),
                        title: Text("${selectedTrip.program[index]}"),
                      ),

                      Divider(
                        thickness : 0.3 ,
                      )
                    ],
                  ),
        
                )
        
               ),

               SizedBox(height: 100,),
        
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context );
        } ,
        child: Icon(Icons.delete),
      ),
    );
  }
}
