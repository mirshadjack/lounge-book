import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lounge/bookcollections.dart';
import 'package:lounge/lighthome.dart';
import 'package:lounge/profile.dart';
import 'package:lounge/savedlist.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  var selectedindex = 0;
  List pages = [
    const Lighthome(),
    const Bookcollections(),
    const Savedlist(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        currentIndex: selectedindex,
        selectedItemColor: HexColor("#D45555"),
        unselectedItemColor: Colors.black26,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Empty",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: "Empty"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), label: "Empty"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Empty"),
        ],
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
    );
  }
}
