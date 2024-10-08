import 'package:flutter/material.dart';
import 'package:travel_app/Models/trip_model.dart';
import '../Widgets/trip_card.dart';
import 'package:travel_app/app_data.dart';

class CategoryTripsScreen extends StatefulWidget {
  static const routToCategoryTripsScreen = "/category-trips";

  @override
  State<CategoryTripsScreen> createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  late String categoryTitle;
  late List<TripModel> displayTrips;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title']!;

    displayTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();

    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((element) => element.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 51, 156),
        title: Text(
          categoryTitle,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TripCard(
            id: displayTrips[index].id,
            title: displayTrips[index].title,
            imageURL: displayTrips[index].imageURL,
            duration: displayTrips[index].durationDay,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
            removeItem: _removeTrip,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}
