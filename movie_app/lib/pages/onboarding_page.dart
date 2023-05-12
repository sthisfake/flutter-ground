import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3C6E71),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text('Favorite Movies',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF))),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, bottom: 40.0, top: 80),
            child: Image.asset('assets/images/movie.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('Start building your movie list today',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSerif(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF))),
          ),
          const SizedBox(
            height: 24,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return SignUp();
            })),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF284B63),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 20),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
