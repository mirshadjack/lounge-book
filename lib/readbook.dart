import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Readbook extends StatefulWidget {
  const Readbook({super.key});

  @override
  State<Readbook> createState() => _ReadbookState();
}

class _ReadbookState extends State<Readbook> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.dehaze_sharp)],

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Column(
          children: [
            Text(
              "RAM C/O ANANDHI",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              "AKHIL P DHARMAJAN",
              style:
                  GoogleFonts.poppins(fontSize: 12, color: HexColor('#9D9D9D')),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                """ is   Holden’s  fourth  school; he has already failed out of three others.At  Pencey, he has  failed four  out  of  five of  his classes and  has  received notice   that   he is   being expelled,  but  he  is  not scheduled  to return home  to  Manhattan  until  Wedne-sday. He visits his  elderly history teacher, Spencer, to say   goodbye,  but    when  Spencer  tries  to reprimand him  for his poor  academic perfo rm ance, Holden becomes annoyed. Back in the dorm itory,  Holden is further  irritated by his unhygienic neighbor, Ackley, and by his own  roommate,  Strad later.
         Stradlater  spends   the  evening   on a  date with   Jane  Gallagher, a   girl  whom  Holden used  to  date  and  whom  he   still  admires. During  the   course  of  the   evening, Holden grows increasingly nervous about Stradlater ’s   taking   Jane   out,   and   when Stradlater returns,  Holden   questions   him  insist ently about whether he tried to  have sex with her. Stradlater   teases  Holden,  who  flies  into  a rage and attacks  Stradlater. Stradlater pins Holden down and  bloodies his nose. Holden decides   that  he’s  enough  of  Pencey  and  will goand bloodies his nose.Holden decides that  he’s  enough  of  Pencey  and  will go and  bloodies his nose. Holden decides  that  he’s  enough  of  Pencey  and  will go   """,
                style: GoogleFonts.poppins(
                    fontSize: 15, color: HexColor('#9D9D9D')),
              ),
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Font Size",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Slider(
              activeColor: HexColor("#D45555"),
             thumbColor: Colors.white,
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
