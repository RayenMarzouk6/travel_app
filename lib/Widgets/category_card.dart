import 'package:flutter/material.dart';
import 'package:travel_app/Screens/category_trips_screen.dart';

class CategoryCard extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryCard(this.id, this.title, this.imageUrl);

  void goToThePage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryTripsScreen.routToCategoryTripsScreen, // Use the static route constant
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToThePage(context),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 200, // Use dynamic height or adjust as needed
              width: double.infinity, // Full width
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24, // Reduced font size for better UI scaling
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
