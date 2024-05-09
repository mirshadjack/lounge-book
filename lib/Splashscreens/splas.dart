import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lounge/Splashscreens/onbording1.dart';

class Splas extends StatefulWidget {
  const Splas({super.key});

  @override
  State<Splas> createState() => _SplasState();
}

class _SplasState extends State<Splas> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if (context != null && context.mounted) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Onbording1()));
      }
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 180,
          ),
          Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/logo.png"))),
            ),
          ),
          Text(
            "Lounge",
            style: TextStyle(fontSize: 35, color: HexColor("#E2735C")),
          ),
          Spacer(

          ),
          Column(
            children: [
              Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/pngegg (27) 1.png"))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
