import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yesorno/cografya_screens/cografya_questions.dart';
import 'package:yesorno/genel_screens/genel_questions.dart';
import 'package:yesorno/tarih_screens/tarih_questions.dart';
import 'package:yesorno/widgets/card.dart';

import '../spor_screens/spor_questions.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Kategoriler",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                  icon: FaIcon(FontAwesomeIcons.heartPulse,
                      color: Color.fromARGB(255, 177, 47, 38)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SporQuestionPage()));
                  },
                  title: "Spor",
                  color: Color.fromARGB(255, 255, 199, 130),
                ),
                CardWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.scroll,
                    color: Color.fromARGB(255, 156, 255, 44),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TarihQuestionPage()));
                  },
                  title: "Tarih",
                  color: Color.fromARGB(255, 181, 147, 105),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.earthEurope,
                    size: 26,
                    color: Color.fromARGB(255, 107, 122, 255),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CografyaQuestionPage()));
                  },
                  title: "Coğrafya",
                  color: Color.fromARGB(255, 107, 75, 75),
                ),
                CardWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.question,
                    color: Color.fromARGB(255, 169, 255, 176),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GenelQuestionPage()));
                  },
                  title: "Genel Kültür",
                  color: Color.fromARGB(255, 106, 139, 196),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.masksTheater,
                    color: Color.fromARGB(255, 115, 123, 146),
                  ),
                  title: "Sanat",
                  color: Color.fromARGB(255, 255, 157, 38),
                ),
                CardWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.gamepad,
                    color: Color.fromARGB(255, 100, 15, 121),
                  ),
                  title: "Oyun",
                  color: Color.fromARGB(255, 214, 144, 58),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                  icon: FaIcon(
                    color: Color.fromARGB(255, 105, 233, 88),
                    size: 22,
                    FontAwesomeIcons.robot,
                  ),
                  title: "Teknoloji",
                  color: Color.fromARGB(255, 129, 107, 255),
                ),
                CardWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.flask,
                    color: Color.fromARGB(255, 166, 179, 255),
                  ),
                  title: "Bilim",
                  color: Color.fromARGB(156, 30, 35, 109),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
