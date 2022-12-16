import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yesorno/all_games/all_categories_questions.dart';
import 'package:yesorno/pages/categories.dart';
import 'package:yesorno/widgets/card.dart';
import 'package:yesorno/widgets/splash_card.dart';

class ChooseGame extends StatefulWidget {
  const ChooseGame({super.key});

  @override
  State<ChooseGame> createState() => _ChooseGameState();
}

class _ChooseGameState extends State<ChooseGame> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoubleBack(
        backgroundRadius: 10,
        background: Colors.red,
        textStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        message: "Uygulamadan çıkmak için bir kez daha geri tuşuna basın.",
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstATop)),
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SplashCardWidget(
                            button: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 189, 123, 123),
                                )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Categories()));
                                },
                                child: Text("Kategoriler",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 249, 249),
                                        fontSize: 14))),
                            color: Color.fromARGB(255, 206, 142, 142),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Categories()));
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.grip,
                              color: Color.fromARGB(255, 194, 231, 163),
                              size: 32,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          SplashCardWidget(
                            button: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 129, 123, 189),
                                )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AllQuestionPage()));
                                },
                                child: Text("Hızlı Oyun",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 249, 249),
                                        fontSize: 14))),
                            color: Color.fromARGB(255, 148, 142, 206),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AllQuestionPage()));
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.bolt,
                              color: Color.fromARGB(255, 194, 231, 163),
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        "Oyun Adı",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 42),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
