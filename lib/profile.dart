import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/maldini.jpeg"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "MALDINI",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 110,
              ),
              const Icon(
                Icons.menu,
                color: Colors.black45,
                size: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 25,
              color: HexColor("#D45555"),
            ),
            title: Text(
              "My Profile",
              style: GoogleFonts.poppins(fontSize: 17, color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 25,
              color: HexColor("#D45555"),
            ),
            title: Text(
              "Settings",
              style: GoogleFonts.poppins(fontSize: 17, color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.headset_mic_outlined,
              size: 25,
              color: HexColor("#D45555"),
            ),
            title: Text(
              "Help Center",
              style: GoogleFonts.poppins(fontSize: 17, color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.airplane_ticket_outlined,
              size: 25,
              color: HexColor("#D45555"),
            ),
            title: Text(
              "Intive Friends",
              style: GoogleFonts.poppins(fontSize: 17, color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              size: 25,
              color: HexColor("#D45555"),
            ),
            title: Text(
              "Logout",
              style: GoogleFonts.poppins(fontSize: 17, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
