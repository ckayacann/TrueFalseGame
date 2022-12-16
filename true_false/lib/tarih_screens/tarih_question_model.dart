import 'dart:math';

class TarihQuestion {
  final String question;
  final Answer correctAnswer;

  TarihQuestion({required this.question, required this.correctAnswer});
}

class QuestionResult {
  static List<QuestionResult> defaultQuestions = [
    QuestionResult(
        question: TarihQuestion(
      question: "SOVYETLER BİRLİĞİ 15 ÜLKEDEN OLUŞMUŞTU.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "TARİHTE BİLİNEN EN UZUN TÜRK DESTANI MANAS DESTANIDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "TÜRK TARİHİNDE KAĞIT VE MATBAAYI KULLANAN İLK TÜRK DEVLETİ GÖKTÜRKLERDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "ORDUSUNDA ATLI SÜVARİLER KULLANARAK, DÜŞMANLARINA KARŞI BAŞARILI OLAN VE AVRUPA FEODALİTESİNİN KURUCUSU OLARAK ADLANDIRILAN KİŞİ CHARLES MARTEL'DİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "İNGILTERE, XVIII. YÜZYIL’DA ÜZERINDE GÜNEŞ'IN BATMADIĞI IMPARATORLUK OLARAK ANILMAKTAYDI.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "AVRUPA'DA SANAYI DEVRİMİ İLK OLARAK FRANSA'DA BAŞLAMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "TARİHTEKİ İLK HABER AJANSI CHARLES-LOUIS HAVAS TARAFINDAN KURULMUŞTUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "OSMANLI İMPARATORLUĞUNDA ÇIKAN İLK RESMİ GAZETE LE MONITEUR OTTOMAN (OSMANLI AYNASI)'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "İTALYAN HÜMANİZMİNİN BAŞLANGICI OLARAK GIOVANNI BOCCACCIO KABUL EDİLMEKTEDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "PİRAMİTLER SÜMERLER DÖNEMİNDE İNŞA EDİLMİŞTİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "YAZI TUNÇ ÇAĞINDA KEŞFEDİLMİŞTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "MEVLÂNÂ CELÂLEDDÎN-I RÛMÎ ANADOLU'DA, SELÇUKLU DÖNEMİNDE YAŞAMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "HAMMURABİ KANUNLARI BABİLLER DÖNEMİNDE YAZILMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "ÜLKEMİZDE ÇORUM, BOĞAZKÖY’DE YER ALAN VE 1986 UNESCO DÜNYA MİRAS LİSTESİNE ALINAN ‘HATTUŞAŞ’ KENTİ URARTULAR'IN BAŞKENTİDIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "MEZOPOTAMYA’DA KURULAN İLK ŞEHIR DEVLETLERİNDEN BİRİ ANTİK ROMA'DIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "İLK TAKVİM, M.Ö. 2000 YILLARINDA MISIRLILAR TARAFINDAN GELİŞTİRİLMIŞTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "KADEŞ ANTLAŞMASI, TARİHTE BELGELENMİŞ İLK YAZILI ANLAŞMADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "SELÇUKLU DÖNEMİNDE RUH VE SİNİR HASTALIKLARININ TEDAVİ EDİLDİĞİ YERE DARÜLKURA DENİRDİ.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question: "ÇALDIRAN SAVAŞI, BİZANS İMPARATORLUĞU’NUN GÜCÜNÜ SARSMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: TarihQuestion(
      question:
          "RÖNESANS İTALYA’DA 15.YÜZYILIN SONUNDA ORTAYA ÇIKAN BİR YENİLENME SÜRECİDİR.",
      correctAnswer: Answer.no,
    )),
  ];

  bool answeredCorrectly;
  final TarihQuestion question;

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
