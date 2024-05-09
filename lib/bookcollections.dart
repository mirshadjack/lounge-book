import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Bookcollections extends StatefulWidget {
  const Bookcollections({super.key});

  @override
  State<Bookcollections> createState() => _BookcollectionsState();
}
class _BookcollectionsState extends State<Bookcollections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 5, top: 30),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search ',
                      hintStyle: GoogleFonts.poppins(color: HexColor('#9D9D9D')),
                      prefixIcon: Icon(
                        Icons.search,
                        color: HexColor('#9D9D9D'),
                        size: 20,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: HexColor('#9D9D9D'),
                        size: 20,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Malayalam",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 150,
                          decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Adujivitam.jpg"))),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 200,
                          width: 150,
                          decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                  AssetImage("assets/orikkal.jpg"))),
                        ),
                      ],
                    ),
                  ),
                  ],
                ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aatujeevitham",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(
                  width: 120,
                ),
                Center(
                  child: Text(
                    "Orikkal",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BENYAMIN",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: HexColor('#9D9D9D')),
                ),
                const SizedBox(
                  width: 140,
                ),
                Text(
                  "N. MOHANAN",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: HexColor('#9D9D9D')),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "English",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [  Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/schoolheist.jpg"))),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image:
                              AssetImage("assets/harryporter.jpg"))),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
