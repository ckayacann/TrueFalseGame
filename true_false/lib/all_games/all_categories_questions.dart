import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yesorno/all_games/all_categories_result.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'all_categories_model.dart';

class AllQuestionPage extends StatefulWidget {
  final List<QuestionResult> _questions =
      QuestionResult.getRandomDefaultQuestionsShuffled();

  AllQuestionPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AllQuestionPageState();
  }
}

class _AllQuestionPageState extends State<AllQuestionPage> {
  //in ms
  // ignore: constant_identifier_names
  static const int CORRECT_TEXT_ANIMATION_DURATION = 300;

  int _currentQuestionIndex = 0;
  bool _correctTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/images/all.jpg"),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop)),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 150, horizontal: 18),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.red,
                        Color.fromARGB(255, 74, 28, 148),
                      ],
                      begin: FractionalOffset(0.0, 0.0),
                      end: FractionalOffset(0.8, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        widget._questions
                            .elementAt(_currentQuestionIndex)
                            .question
                            .question,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedOpacity(
                  opacity: _correctTextVisible ? 1 : 0,
                  duration: const Duration(
                      milliseconds: CORRECT_TEXT_ANIMATION_DURATION),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Card(
                      color: Color.fromARGB(110, 66, 253, 66),
                      child: Center(
                        child: Text("DOĞRU CEVAP",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255))),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Expanded(
              flex: 3,
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Color.fromARGB(255, 21, 61, 129)),
                        child: Text(
                          "DOĞRU",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: () {
                          _answerCurrentQuestion(Answer.yes);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Color.fromARGB(255, 129, 21, 21)),
                        child: Text(
                          "YANLIŞ",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: () {
                          _answerCurrentQuestion(Answer.no);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  void _answerCurrentQuestion(Answer answer) async {
    if (widget._questions.elementAt(_currentQuestionIndex).answer(answer)) {
      _updateBestScoreIfNecessary(_currentQuestionIndex + 1);
      if (_currentQuestionIndex + 1 == widget._questions.length) {
        _showResult(_currentQuestionIndex + 1);
      } else {
        setState(() {
          _correctTextVisible = true;
        });

        Future.delayed(
          const Duration(milliseconds: CORRECT_TEXT_ANIMATION_DURATION + 600),
        ).then((v) {
          _currentQuestionIndex++;
          setState(() {
            _correctTextVisible = false;
          });
        });
      }
    } else {
      _showResult(_currentQuestionIndex);
    }
  }

  void _showResult(int correctAnswers) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => AllCategoriesResultPage(
            correctAnswers, _getAnsweredQuestionsInPercent(correctAnswers))));
  }

  int _getAnsweredQuestionsInPercent(int correctAnswers) {
    return 100 ~/ widget._questions.length * correctAnswers;
  }

  void _updateBestScoreIfNecessary(int correctAnswers) async {
    await SharedPreferences.getInstance().then((sharedPreferences) {
      var bestScore = sharedPreferences.getInt("allScore");

      bestScore ??= 0;

      if (bestScore < correctAnswers) {
        sharedPreferences.setInt("allScore", correctAnswers);
      }
    });
  }
}
