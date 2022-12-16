import 'dart:math';

class SporQuestion {
  final String question;
  final Answer correctAnswer;

  SporQuestion({required this.question, required this.correctAnswer});
}

class QuestionResult {
  static List<QuestionResult> defaultQuestions = [
    QuestionResult(
        question: SporQuestion(
      question:
          "YÜZME VE ATLETİZM YARIŞLARINDA HER SPORCUYA AYRILAN ŞERİDE 'APRON' DENİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "WİMBLEDON TENİS TURNUVASI İNGİLTERE'DE YAPILMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "NBA TARİHİNDE EN ÇOK ŞAMPİYONLUK YÜZÜĞÜ BULUNAN BASKETBOLCU BILL RUSSELL'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "İTALYAN KALECİ GIANLUIGI BUFFON HİÇ ŞAMPİYONLAR LİGİ ŞAMPİYONLUĞU YAŞAMAMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "TARİHİN EN ÇOK GRAND SLAM KAZANAN TENİSÇİSİ RAFAEL NADAL'DIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "FUTBOLDA İLK DÜNYA KUPASI KAZANAN ÜLKE URUGUAY'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "ŞAMPİYONLAR LİGİ TARİHİNDE SIFIR PUAN ALARAK GRUPLARDAN ÇIKAMAYAN TEK TÜRK TAKIMI TRABZONSPOR'DUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "MARADONA, TANRI'NIN ELİ OLARAK ADLANDRILAN GOLÜ ARJANTİN - BREZİLYA MAÇINDA ATMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "HENTBOLDA BİR TAKIMDA 7 OYUNCU BULUNMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "SUMO GÜREŞİ, JAPONYA'NIN ULUSAL SPORUDUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "BASKETBOL KARŞILAŞMALARINDA BİR TAKIM MAÇ BOYUNCA EN FAZLA 6 MOLA ALABİLİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "TÜRKİYE, 2012 LONDRA OLİMPİYAT OYUNLARINDA TOPLAM 5 MADALYA ALMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          " FORMULA 1 PARKURUNDA PİSTTE YAVAŞ GİDEN BİR ARAÇ VARSA SARI RENKLİ BAYRAK SALLANIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "DAĞCILIK SPORUNUN DİĞER ADI ALPİNİZM'DİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "İNGİLİZ ROCK YILDIZI ELTON JOHN, WATFORD TAKIMININ SAHİBİDİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "OLİMPİYATLARDAKİ HALKA ÜZERİNDEKİ RENKLER; MAVİ, KIRMIZI, SARI, TURUNCU VE YEŞİLDİR. ",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question: "FLÖRE, GOLFTE SOPALARI TAŞIYAN ÇANTAYA VERİLEN İSİMDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "1839’DA THE GRAND NATIONAL AT YARIŞINDA KAZANAN İLK ATIN ADI CHAMPION'DUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "NBA TAKIMLARINDAN LA LAKERS, EN UZUN GALİBİYET SERİSİNE SAHİP TAKIMDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: SporQuestion(
      question:
          "TÜM ZAMANLARIN EN ÇOK ÖLÜM YAŞANAN SPORU, PARAŞÜTLE YÜKSEKTEN ATLAMA'DIR.",
      correctAnswer: Answer.yes,
    )),
  ];

  bool answeredCorrectly;
  final SporQuestion question;

  QuestionResult({this.answeredCorrectly = false, required this.question});

  bool answer(Answer answer) {
    answeredCorrectly = question.correctAnswer == answer;
    return answeredCorrectly;
  }

  static List<QuestionResult> getRandomDefaultQuestions() => defaultQuestions;
  static List<QuestionResult> getRandomDefaultQuestionsShuffled() {
    shuffleDefaultQuestions();
    return getRandomDefaultQuestions();
  }

  static void shuffleDefaultQuestions() {
    var random = Random();

    for (var i = defaultQuestions.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);
      var temp = defaultQuestions[i];

      defaultQuestions[i] = defaultQuestions[n];
      defaultQuestions[n] = temp;
    }
  }
}

enum Answer { yes, no }
