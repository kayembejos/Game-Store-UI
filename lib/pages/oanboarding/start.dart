import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/ori3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ready to level up?',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 40, color: Colors.white)),
              const SizedBox(
                height: 15,
              ),
              Text('Your next adventure is waiting for you.',
                  style:
                      GoogleFonts.bebasNeue(fontSize: 25, color: Colors.white)),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 18.0),
                ),
                child: Text('Get Started',
                    style: GoogleFonts.roboto(
                        fontSize: 16, color: Colors.purple[500])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
