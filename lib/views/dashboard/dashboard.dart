import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Profile_page/profile_screen.dart';
import '../Tournament_page/Tournament_screen.dart';
import '../home_page/home_page.dart';
import '../mandala_art_screen/art_home_page.dart';
import '../music/music_page.dart';
import '../profile_screen_ui/profile_screen_ui.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  //list of pages
  final List<Widget> pages = [
    HomePage(),
    ArtHomePage(),
    MusicPage(),
    HomePageTournament(),
    ProfileScreenUi(),
  ];

  //current index of the page
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF0D1B39),
        color: Color(0xff5D4094),
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30, color: Colors.white,),
          Icon(Icons.palette_outlined, size: 30, color: Colors.white,),
          Icon(Icons.music_note, size: 30, color: Colors.white,),
          Icon(Icons.celebration, size: 30, color: Colors.white,),
          Icon(Icons.person_2_outlined, size: 30, color: Colors.white,),
        ],
        onTap: (index) {
          onItemTapped(index);
        },
      ),
      body: pages[currentIndex],
    );
  }
}
