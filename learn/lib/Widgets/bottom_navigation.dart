import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn/Widgets/alaert.dart';
import 'package:learn/Widgets/button.dart';
import 'package:learn/Widgets/dismissible.dart';
import 'package:learn/Widgets/snackbar.dart';



class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({super.key});

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {

  int selectedindex = 0;

// List<Widget> Widgets = [
//   Text('Home'),
//   Text('Search'),
//   Text('Add'),
//   Text('Profile'),
// ];

PageController pageController = PageController();

void onTapped(int index){
  setState(() {
    selectedindex = index;
  });
  pageController.jumpToPage(index);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("Bottom Navigation",style: TextStyle(color: Colors.white),),
        //backgroundColor: Colors.blue,
      //),
      body: PageView(controller: pageController,physics: const NeverScrollableScrollPhysics(),
      children: [
        Alert(),
        Diss(),
        Snackbarlean(),
        Button()
      ],) ,
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem> 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin_rounded),label: "Profile"),


      ],currentIndex: selectedindex,
      selectedItemColor: Colors.blue  ,
      unselectedItemColor: Colors.grey,
      onTap: onTapped,),
    );
  }
}