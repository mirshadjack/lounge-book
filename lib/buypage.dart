import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Buypage extends StatefulWidget {
  const Buypage({super.key});

  @override
  State<Buypage> createState() => _BuypageState();
}

class _BuypageState extends State<Buypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/ram anandi.jpg"))),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "RAM C/O ANANDHI",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Text(
              "AKHIL P DHARMAJAN",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: HexColor('#9D9D9D')),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/dcbooks.png"))),
            ), Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/amazon.png"))),
            ), Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/flipkart.png"))),
            ),
            ],
          ), Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/amazon.png"))),
            ), Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/flipkart.png"))),
            ), Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/dcbooks.png"))),
            ),
            ],
          ), Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/flipkart.png"))),
            ), Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/dcbooks.png"))),
            ), Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/amazon.png"))),
            ),
            ],
          ),
        ],
      ),
    );
  }
}
