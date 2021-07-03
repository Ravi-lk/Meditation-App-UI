import 'package:flutter/material.dart';
import 'package:meditation/widgets/appbar_widget.dart';
import 'package:meditation/widgets/icon_list.dart';
import 'package:meditation/widgets/meditation_list.dart';
import 'package:meditation/widgets/music_list.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);
 

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {


   int _selectedIndex =0; 


void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildIconList(),
            MeditationList(),
            MusicList(), 
          ],
        ),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Yoga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_night),
            label: 'Meditation',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.ramen_dining),
            label: 'Meal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        
        elevation: 3,
        onTap: _onItemTapped,
      
      ),
    );
  }
}
