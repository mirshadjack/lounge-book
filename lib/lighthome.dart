import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lounge/bookdetails.dart';
class Lighthome extends StatefulWidget {
  const Lighthome({super.key});
  @override
  State<Lighthome> createState() => _LighthomeState();
}

class _LighthomeState extends State<Lighthome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Welcome back, Bunny!",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: HexColor('#9D9D9D')),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.menu,
                      color: HexColor('#9D9D9D'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "What do you want to",
                  style: GoogleFonts.poppins(
                      // fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
                Text(
                  "read today?",
                  style: GoogleFonts.poppins(
                      // fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                SizedBox(
                  height: 50,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: const Color.fromRGBO(111, 31, 40, 1),
                    indicatorColor: Colors.red,
                    dividerColor: Colors.transparent,
                    unselectedLabelColor: Colors.blue,
                    tabs: [
                      Tab(
                        child: Text(
                          "Novel",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: HexColor("#1E1E1E")),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Self-love",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: HexColor("#1E1E1E")),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Science",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: HexColor("#1E1E1E")),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Romance",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: HexColor("#1E1E1E")),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 580,
                  child: TabBarView(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Bookdetails()));
                                },
                                child:
                                Container(
                                  height: 200,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                      // borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/ram anandi.jpg"))),
                                ),
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
                                            "assets/ettavum priyapetta.jpg"))),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "RAM C/O ANANDHI",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              "Ettavum priyappetta..",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "AKHIL P DHARMAJAN",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: HexColor('#9D9D9D')),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            Text(
                              "Nimna Vijay",
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: HexColor('#9D9D9D')),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 195, top: 10),
                          child: Text(
                            'New Arrivals',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
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
                      ],
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/selflove.jpg"))),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/science.jpg"))),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        // borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/romance.jpg"))),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
