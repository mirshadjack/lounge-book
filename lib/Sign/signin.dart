import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var Email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hy,",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black),
              ),
              Text(
                "Welcome Back!",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "commitcommunity@gmail.com",
                      hintStyle: GoogleFonts.inter(fontSize: 12),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        Text(
                          "Remember Password",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Text(
                          "Forgot Password?",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              overlayColor: const MaterialStatePropertyAll(
                                  Color(0xFFBFA05A)),
                              backgroundColor:
                                  MaterialStatePropertyAll(HexColor("#D45555")),
                            ),
                            onPressed: () {},
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
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
