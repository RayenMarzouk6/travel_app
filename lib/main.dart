import 'package:flutter/material.dart';
import 'package:travel_app/Screens/category.dart';
import 'package:travel_app/Screens/category_trips_screen.dart';
import 'package:travel_app/Screens/fillter_trips_screen.dart';
import 'package:travel_app/Screens/tabs_screen.dart';
import 'package:travel_app/Screens/trips_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        // Define any theme customization here
      ),
      initialRoute: "/",
      routes: {
        "/": (ctx) => TabsScreen(),
        CategoryTripsScreen.routToCategoryTripsScreen: (ctx) => CategoryTripsScreen(),
        TripsDetailsScreen.routeToDetailsTrips : (ctx) => TripsDetailsScreen() ,
        FillterTripsScreen.filterScreenRote : (ctx) => FillterTripsScreen()
      },
    );
  }
}
