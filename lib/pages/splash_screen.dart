import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran_flutter/pages/home_screen.dart';
import 'package:quran_flutter/theme.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash_screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Quran App",
                  style:
                      GoogleFonts.poppins(fontSize: 28, color: primaryColor)),
              const Text(
                "Learn Quran\nRecite EveryDay",
              ),
              const SizedBox(
                height: 18,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SvgPicture.asset('assets/svg/splash.svg'),
                  ),
                  Positioned(
                    bottom: -20,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                      ),
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
