import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yesorno/pages/categories.dart';
import 'package:yesorno/tarih_screens/tarih_questions.dart';

class TarihResultPage extends StatefulWidget {
  final int tarihScore, percent;

  const TarihResultPage(this.tarihScore, this.percent, {super.key});

  @override
  State<TarihResultPage> createState() => _TarihResultPageState();
}

class _TarihResultPageState extends State<TarihResultPage> {
  int? _tarihScore = 0;

  @override
  void initState() {
    super.initState();
    _setScore();
  }

  void _setScore() async {
    await SharedPreferences.getInstance().then((sharedPreferences) {
      setState(() {
        _tarihScore = sharedPreferences.getInt("tarihScore") ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 96, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "SKORUNUZ",
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Color.fromARGB(255, 6, 34, 64)),
          ),
          Spacer(),
          Text(
            widget.tarihScore.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 96, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            "EN YÜKSEK SKOR",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text("$_tarihScore",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Color.fromARGB(255, 90, 133, 197)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Categories()));
                  },
                  child: Text(
                    "KATEGORİLER",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(20),
                      backgroundColor: Color.fromARGB(255, 255, 132, 32)),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TarihQuestionPage()));
                  },
                  child: Text(
                    "YENİDEN DENE",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
