import 'package:flutter/material.dart';
import 'package:travel_app/Screens/category.dart';
import 'package:travel_app/Screens/favorite_screen.dart';
import '../Widgets/drawer_popup.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});







  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // Gestion de l'index de l'écran sélectionné
  int _selectedScreenIndex = 0;

    // Liste des écrans à afficher
  final List <Map<String , Object >> _screens = [
    {
      "Screen" : Category() ,
      "title" : "Category Trips"
    },
    {
      "Screen": FavoriteScreen(), // Corrigé : "Screen" au lieu de "Favorite"
      "title" : "Favorite Trips"
    }
  ] ;


// Fonction pour changer d'écran
  void _selectScreen(int index){
    setState((){
      _selectedScreenIndex = index ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreenIndex]['title'] as String,

          style: TextStyle(
            color: Colors.white ,

        ),),
      
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),

        // drawer : Drawer(
        //   child: Text("Menu Bar"),
        // ),
       drawer:  DrawerPopup(),

   // Affiche l'écran sélectionné
      body: _screens[_selectedScreenIndex]['Screen'] as Widget ,


      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen, // Change d'écran lors du tap
        backgroundColor: Colors.deepPurple[300],
        selectedItemColor: Colors.amber, // el 9ares el manzoul
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex, //bach ya3ref eli ani enzelet 3ala 9ares a5er o ebadel el color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard) ,
            label: "Categories"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star) ,
            label: "Favorite"
            ),
        ],
      ),
    );
  }
}