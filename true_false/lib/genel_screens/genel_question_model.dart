import 'dart:math';

class GenelQuestion {
  final String question;
  final Answer correctAnswer;

  GenelQuestion({required this.question, required this.correctAnswer});
}

class QuestionResult {
  static List<QuestionResult> defaultQuestions = [
    QuestionResult(
        question: GenelQuestion(
      question:
          "TSUNAMI FELAKETİNDE EN FAZLA ZARAR GÖREN GÜNEY ASYA ÜLKESİ ENDONEZYA'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "TÜRKİYE'NİN EN BÜYÜK, DÜNYA'NN İSE 2. BÜYÜK KANYONU OLAN ULUBEY KANYONU, UŞAK'TA BULUNMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "BİRLEŞMİŞ MİLLETLER EĞİTİM, BİLİM VE KÜLTÜR ÖRGÜTÜ OLARAK 1945'TE KURULAN UNESCO'NUN MERKEZİ ZÜRIH'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "DÜNYA ÜZERİNDE BİLİNEN EN DERİN NOKTA MARİANA ÇUKURU'DUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "AVRUPA'NIN EN UZUN NEHRİ TUNA NEHRİ'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "KIBRIS'TA YER ALAN HAVALİMANININ İSMİ, ERCAN HAVALİMANI'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "KARADENİZ'DE TÜRKİYE'YE AİT 3 ADA VARDIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "STAR TV TÜRKIYE’NİN İLK ÖZEL TELEVİZYON KANALIDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "FATİH SULTAN MEHMET'İN DE EĞİTİM ALDIĞI SAATLİ MEDRESESİ KONYA'DA BULUNMAKTADIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "TÜRKİYE'NİN PARA BİRİMİ OLAN LİRA KELİMESİNİN LATINCE KÖKENI OLAN, 'LIBRA' AĞIRLIK BİRİMİDİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "DÜNYA’DA NÜKLEER SANTRAL SAYISI EN FAZLA OLAN ÜLKE ÇİN'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "TÜRKİYE’DE İLK RENKLİ TELEVİZYON YAYINI 1984 YILINDA BAŞLAMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "TÜRK EDEBİYATININ İLK KADIN ROMANCISI OLARAK BİLİNEN VE 50 TÜRK LİRASININ ÜZERİNDE RESMİ YER ALAN ROMANCI FİLİZ DİNÇMEN'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "TÜRKİYE'NİN EN DÜŞÜK GELİR ELDE EDİLEN İLİ MUŞ'TUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "UNESCO 2022 DÜNYA KİTAP BAŞKENTİ İLAN EDİLEN ŞEHİR AMSTERDAM'DIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "ENDÜSTRİ DEVRIMI’Nİ GERÇEKLEŞTIREN İLK DEVLET BİRLEŞİK KRALLIK'TIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question: "HALK ARASINDA 'ÇOBANYILDIZI' OLARAK BİLİNEN GEZEGEN MARS'TIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "OXFORD İNGİLİZCE SÖZLÜĞÜNÜN YAPMIŞ OLDUĞU GÜNCELLEME SONUCUNDA TÜRKİYE’DEN SÖZLÜĞE GİREN KELİME SİMİT'DİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "ALBERT EINSTEIN TARAFINDAN YAZILAN BiR MEKTUP, 1.2 MiLYON DOLARA SATILMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: GenelQuestion(
      question:
          "HER YIL BİNLERCE FLAMİNGOYA EV SAHİPLİĞİ YAPAN, KESİN KORUNACAK HASSAS ALAN İLAN EDİLEN 'ÇELEBİBAĞ FLAMİNGO ALANI' VAN'DA YER ALMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
  ];

  bool answeredCorrectly;
  final GenelQuestion question;

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
