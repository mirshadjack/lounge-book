import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Savedlist extends StatefulWidget {
  const Savedlist({super.key});

  @override
  State<Savedlist> createState() => _SavedlistState();
}

class _SavedlistState extends State<Savedlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search ',
                      hintStyle:
                          GoogleFonts.poppins(color: HexColor('#9D9D9D')),
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Saved",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/selflove.jpg"))),
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
                                image: AssetImage("assets/science.jpg"))),
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
                  "The joy being me",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(
                  width: 60,
                ),
                Center(
                  child: Text(
                    "A brief history of time",
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
                  "Ayelet Porat",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: HexColor('#9D9D9D')),
                ),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  "Stephen hawking",
                  style: GoogleFonts.poppins(
                      fontSize: 12, color: HexColor('#9D9D9D')),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: const BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/romance.jpg"))),
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
                                image: AssetImage(
                                    "assets/orupolicesergente....jpg"))),
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
