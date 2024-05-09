import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lounge/Sign/signin.dart';
import 'package:lounge/Sign/signup.dart';

class Onbording1 extends StatefulWidget {
  const Onbording1({super.key});

  @override
  State<Onbording1> createState() => _Onbording1State();
}

class _Onbording1State extends State<Onbording1> {
  List<String> list = [
    "assets/onbording1.png",
    "assets/onbording2.png",
    "assets/onbording3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
        ),
        body: Column(
          children: [
            CarouselSlider(
                items: list.map((imagepath) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Image.asset(
                        imagepath,
                        fit: BoxFit.cover,
                      ),
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 1.2,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    enlargeCenterPage: false,
                    viewportFraction: 1)),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Read your favourite books",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "All your favourites book in one place, read any book, staying at home, on travelling, or anywhere else",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.black38),
              ),
            ),
            const SizedBox(
              height: 60,
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
                      MaterialStatePropertyAll(HexColor("#D45555")),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
