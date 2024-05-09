import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lounge/buypage.dart';
import 'package:lounge/readbook.dart';

class Bookdetails extends StatefulWidget {
  const Bookdetails({super.key});

  @override
  State<Bookdetails> createState() => _BookdetailsState();
}

class _BookdetailsState extends State<Bookdetails> {
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
        actions:  [
          Icon(
            Icons.bookmark,
           color: HexColor("#D45555"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: HexColor("#FFCE31"),
                ),
                Icon(
                  Icons.star,
                  color: HexColor("#FFCE31"),
                ),
                Icon(
                  Icons.star,
                  color: HexColor("#FFCE31"),
                ),
                Icon(
                  Icons.star,
                  color: HexColor("#FFCE31"),
                ),
                Text(
                  "4.0",
                  style: GoogleFonts.poppins(),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "About the author",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Akhil P Dharmajan is a young Malayalam novelist. He was born on 16-01-1993 in the village of Pathirappally in Alappuzha district as the youngest son of KV Dharmajan and Maheshwari. ",
                style: GoogleFonts.poppins(
                    fontSize: 13, color: HexColor('#9D9D9D')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Overview",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "A feel-good movie-like novel set in the city of Chennai. Love, friendship, travel, revenge, politics and all the ingredients that make for a fun read, this book is full of many stories and twists.",
                style: GoogleFonts.poppins(
                    fontSize: 13, color: HexColor('#9D9D9D')),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      overlayColor:
                          const MaterialStatePropertyAll(Color(0xFFBFA05A)),
                      backgroundColor:
                          MaterialStatePropertyAll(HexColor("#D45555")),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Readbook()));
                    },
                    child: Text(
                      'Read Previews',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      overlayColor:
                          const MaterialStatePropertyAll(Color(0xFFBFA05A)),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Buypage()));
                    },
                    child: Text(
                      'Buy',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
