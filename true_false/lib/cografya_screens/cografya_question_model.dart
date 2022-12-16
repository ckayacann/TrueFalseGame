import 'dart:math';

import 'package:flutter/cupertino.dart';

class CografyaQuestion {
  final String question;
  final Answer correctAnswer;

  CografyaQuestion({required this.question, required this.correctAnswer});
}

class QuestionResult {
  static List<QuestionResult> defaultQuestions = [
    QuestionResult(
        question: CografyaQuestion(
      question:
          "DÜNYANIN DERİNLİKLERİNE DOĞRU İNİLDİKÇE SICAKLIK, YOĞUNLUK VE BASINÇ ARTAR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "KALKER, KAYA TUZU VE JİPS GİBİ SUDA KOLAY ÇÖZÜNEBİLEN KAYAÇLARIN BULUNDUĞU ALANLARA KARSTİK ARAZİ DENİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "SÜVEYŞ KANALI’NIN AÇILMASIYLA LİBYA'NIN JEOPOLİTİK ÖNEMİ ARTMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "TÜRKIYE'DE BALIKÇILIK FAALİYETLERİ EN ÇOK AKDENİZ'DE YAPILMAKTADIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "ASYA, AFRİKA VE OKYANUSYA KITALARI ARASINDA HİNT OKYANUSU YER ALIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "KEBAN, KARAKAYA VE ATATÜRK BARAJ GÖLLERİ, FIRAT NEHRi ÜZERİNDE YER ALIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "AYVALIK VE ÇAMALTI TUZLALARI MARMARA DENİZİ KIYISINDA YER ALIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question: "TÜRKİYE'DE EN FAZLA ÜRETİLEN TARIM ÜRÜNÜ BUĞDAYDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "AKARSU YATAĞININ HERHANGİ BİR KESİTİNDEN BİR SANİYEDE GEÇEN SU MIKTARINA DEBİ DENİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "TÜRKİYE’DE ÇALIŞAN NÜFUSUN EKONOMİK FAALİYET KOLLARINA GÖRE DAĞILIMINDA EN DÜŞÜK ORAN TARIM SEKTÖRÜNE AİTTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "SANAYİ DEVRİMİ İLE BİRLİKTE NÜFUSTA GÖRÜLEN EN FAZLA ARTIŞ VE DEĞİŞİM AFRİKA KITASI’NDA OLMUŞTUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "ADIYAMAN’DA BULUNAN NEMRUT DAĞI, UNESCO TARAFINDAN DÜNYA KÜLTÜR MİRASI LISTESI’NE ALINMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question: "KAYIN AĞACI TÜRKİYE'DEKİ ENDEMİK BİTKİLERDEN BİRİDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "YABANİ ZEYTİN, AKDENİZ BÖLGESİ’NİN KARAKTERİSTİK BİTKİLERİNDEN OLAN, KISA BOYLU BİTKİLERDEN BİRİDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "TÜRKİYE’DE ENDEMİK BİTKİLERİN EN ÇOK BULUNDUĞU YER TOROS DAĞLARI'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "BİR CANLININ EKOSİSTEM İÇİNDE HAYATINI DEVAM ETTİRDİĞİ BÖLGEYE, DİĞER BİR İFADE İLE CANLININ YAŞADIĞI YERİN ADRESINE BİYOM DENİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "TÜRKİYE'DE PAMUK ÜRETİMİNİN YOĞUNLAŞTIĞI MERKEZLERE TEKİRDAĞ VE ÇEVRESİ ÖRNEK VERİLEBİLİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question: "TÜRKİYE'DE TURUNÇGİLLERİN BELİRLİ BİR TARIM BÖLGESİ YOKTUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "ANZER BALI ENDEMİK BİR BİTKİ OLAN ANZER ÇİÇEKLERİNDEN ELDE EDİLMEKTE OLUP, RİZE VE ÇEVRESİNDE ÜRETİLMEKTEDİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: CografyaQuestion(
      question:
          "İPEK BÖCEKÇİLİĞİ, DUT AĞACININ YAYGIN OLDUĞU ALANLARDA YAPILMAKTA OLUP, HATAY VE ÇEVRESİ BU ALANLARA ÖRNEKTİR.",
      correctAnswer: Answer.yes,
    )),
  ];

  bool answeredCorrectly;
  final CografyaQuestion question;

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
