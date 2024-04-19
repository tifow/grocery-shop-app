import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'item_page.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Center(
              child: Image(image: AssetImage("images/raspberry.png")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "We deliver a fresh groceries at your doorstep",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                    fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "fresh items every single day",
              style: GoogleFonts.abel(color: Colors.grey, fontSize: 20),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (_) {
              return item_page();
            })),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(20),
              child: Text(
                'Get started',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    ));
  }
}
