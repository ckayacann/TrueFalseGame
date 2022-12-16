import 'dart:math';

import 'package:flutter/cupertino.dart';

class AllQuestion {
  final String question;
  final Answer correctAnswer;

  AllQuestion({required this.question, required this.correctAnswer});
}

class QuestionResult {
  static List<QuestionResult> defaultQuestions = [
    QuestionResult(
        question: AllQuestion(
      question:
          "DÜNYANIN DERİNLİKLERİNE DOĞRU İNİLDİKÇE SICAKLIK, YOĞUNLUK VE BASINÇ ARTAR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "KALKER, KAYA TUZU VE JİPS GİBİ SUDA KOLAY ÇÖZÜNEBİLEN KAYAÇLARIN BULUNDUĞU ALANLARA KARSTİK ARAZİ DENİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "SÜVEYŞ KANALI’NIN AÇILMASIYLA LİBYA'NIN JEOPOLİTİK ÖNEMİ ARTMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKIYE'DE BALIKÇILIK FAALİYETLERİ EN ÇOK AKDENİZ'DE YAPILMAKTADIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ASYA, AFRİKA VE OKYANUSYA KITALARI ARASINDA HİNT OKYANUSU YER ALIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "KEBAN, KARAKAYA VE ATATÜRK BARAJ GÖLLERİ, FIRAT NEHRi ÜZERİNDE YER ALIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "AYVALIK VE ÇAMALTI TUZLALARI MARMARA DENİZİ KIYISINDA YER ALIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "TÜRKİYE'DE EN FAZLA ÜRETİLEN TARIM ÜRÜNÜ BUĞDAYDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "AKARSU YATAĞININ HERHANGİ BİR KESİTİNDEN BİR SANİYEDE GEÇEN SU MIKTARINA DEBİ DENİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE’DE ÇALIŞAN NÜFUSUN EKONOMİK FAALİYET KOLLARINA GÖRE DAĞILIMINDA EN DÜŞÜK ORAN TARIM SEKTÖRÜNE AİTTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "SANAYİ DEVRİMİ İLE BİRLİKTE NÜFUSTA GÖRÜLEN EN FAZLA ARTIŞ VE DEĞİŞİM AFRİKA KITASI’NDA OLMUŞTUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ADIYAMAN’DA BULUNAN NEMRUT DAĞI, UNESCO TARAFINDAN DÜNYA KÜLTÜR MİRASI LISTESI’NE ALINMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "KAYIN AĞACI TÜRKİYE'DEKİ ENDEMİK BİTKİLERDEN BİRİDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "YABANİ ZEYTİN, AKDENİZ BÖLGESİ’NİN KARAKTERİSTİK BİTKİLERİNDEN OLAN, KISA BOYLU BİTKİLERDEN BİRİDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE’DE ENDEMİK BİTKİLERİN EN ÇOK BULUNDUĞU YER TOROS DAĞLARI'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "BİR CANLININ EKOSİSTEM İÇİNDE HAYATINI DEVAM ETTİRDİĞİ BÖLGEYE, DİĞER BİR İFADE İLE CANLININ YAŞADIĞI YERİN ADRESINE BİYOM DENİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE'DE PAMUK ÜRETİMİNİN YOĞUNLAŞTIĞI MERKEZLERE TEKİRDAĞ VE ÇEVRESİ ÖRNEK VERİLEBİLİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "TÜRKİYE'DE TURUNÇGİLLERİN BELİRLİ BİR TARIM BÖLGESİ YOKTUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ANZER BALI ENDEMİK BİR BİTKİ OLAN ANZER ÇİÇEKLERİNDEN ELDE EDİLMEKTE OLUP, RİZE VE ÇEVRESİNDE ÜRETİLMEKTEDİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "İPEK BÖCEKÇİLİĞİ, DUT AĞACININ YAYGIN OLDUĞU ALANLARDA YAPILMAKTA OLUP, HATAY VE ÇEVRESİ BU ALANLARA ÖRNEKTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TSUNAMI FELAKETİNDE EN FAZLA ZARAR GÖREN GÜNEY ASYA ÜLKESİ ENDONEZYA'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE'NİN EN BÜYÜK, DÜNYA'NN İSE 2. BÜYÜK KANYONU OLAN ULUBEY KANYONU, UŞAK'TA BULUNMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "BİRLEŞMİŞ MİLLETLER EĞİTİM, BİLİM VE KÜLTÜR ÖRGÜTÜ OLARAK 1945'TE KURULAN UNESCO'NUN MERKEZİ ZÜRIH'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "DÜNYA ÜZERİNDE BİLİNEN EN DERİN NOKTA MARİANA ÇUKURU'DUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "AVRUPA'NIN EN UZUN NEHRİ TUNA NEHRİ'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "KIBRIS'TA YER ALAN HAVALİMANININ İSMİ, ERCAN HAVALİMANI'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "KARADENİZ'DE TÜRKİYE'YE AİT 3 ADA VARDIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "STAR TV TÜRKIYE’NİN İLK ÖZEL TELEVİZYON KANALIDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "FATİH SULTAN MEHMET'İN DE EĞİTİM ALDIĞI SAATLİ MEDRESESİ KONYA'DA BULUNMAKTADIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE'NİN PARA BİRİMİ OLAN LİRA KELİMESİNİN LATINCE KÖKENI OLAN, 'LIBRA' AĞIRLIK BİRİMİDİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "DÜNYA’DA NÜKLEER SANTRAL SAYISI EN FAZLA OLAN ÜLKE ÇİN'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE’DE İLK RENKLİ TELEVİZYON YAYINI 1984 YILINDA BAŞLAMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRK EDEBİYATININ İLK KADIN ROMANCISI OLARAK BİLİNEN VE 50 TÜRK LİRASININ ÜZERİNDE RESMİ YER ALAN ROMANCI FİLİZ DİNÇMEN'DİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "TÜRKİYE'NİN EN DÜŞÜK GELİR ELDE EDİLEN İLİ MUŞ'TUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "UNESCO 2022 DÜNYA KİTAP BAŞKENTİ İLAN EDİLEN ŞEHİR AMSTERDAM'DIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ENDÜSTRİ DEVRIMI’Nİ GERÇEKLEŞTIREN İLK DEVLET BİRLEŞİK KRALLIK'TIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "HALK ARASINDA 'ÇOBANYILDIZI' OLARAK BİLİNEN GEZEGEN MARS'TIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "OXFORD İNGİLİZCE SÖZLÜĞÜNÜN YAPMIŞ OLDUĞU GÜNCELLEME SONUCUNDA TÜRKİYE’DEN SÖZLÜĞE GİREN KELİME SİMİT'DİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ALBERT EINSTEIN TARAFINDAN YAZILAN BiR MEKTUP, 1.2 MiLYON DOLARA SATILMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "HER YIL BİNLERCE FLAMİNGOYA EV SAHİPLİĞİ YAPAN, KESİN KORUNACAK HASSAS ALAN İLAN EDİLEN 'ÇELEBİBAĞ FLAMİNGO ALANI' VAN'DA YER ALMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "YÜZME VE ATLETİZM YARIŞLARINDA HER SPORCUYA AYRILAN ŞERİDE 'APRON' DENİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "WİMBLEDON TENİS TURNUVASI İNGİLTERE'DE YAPILMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "NBA TARİHİNDE EN ÇOK ŞAMPİYONLUK YÜZÜĞÜ BULUNAN BASKETBOLCU BILL RUSSELL'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "İTALYAN KALECİ GIANLUIGI BUFFON HİÇ ŞAMPİYONLAR LİGİ ŞAMPİYONLUĞU YAŞAMAMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "TARİHİN EN ÇOK GRAND SLAM KAZANAN TENİSÇİSİ RAFAEL NADAL'DIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "FUTBOLDA İLK DÜNYA KUPASI KAZANAN ÜLKE URUGUAY'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ŞAMPİYONLAR LİGİ TARİHİNDE SIFIR PUAN ALARAK GRUPLARDAN ÇIKAMAYAN TEK TÜRK TAKIMI TRABZONSPOR'DUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "MARADONA, TANRI'NIN ELİ OLARAK ADLANDRILAN GOLÜ ARJANTİN - BREZİLYA MAÇINDA ATMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "HENTBOLDA BİR TAKIMDA 7 OYUNCU BULUNMAKTADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "SUMO GÜREŞİ, JAPONYA'NIN ULUSAL SPORUDUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "BASKETBOL KARŞILAŞMALARINDA BİR TAKIM MAÇ BOYUNCA EN FAZLA 6 MOLA ALABİLİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRKİYE, 2012 LONDRA OLİMPİYAT OYUNLARINDA TOPLAM 5 MADALYA ALMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          " FORMULA 1 PARKURUNDA PİSTTE YAVAŞ GİDEN BİR ARAÇ VARSA SARI RENKLİ BAYRAK SALLANIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "DAĞCILIK SPORUNUN DİĞER ADI ALPİNİZM'DİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "İNGİLİZ ROCK YILDIZI ELTON JOHN, WATFORD TAKIMININ SAHİBİDİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "OLİMPİYATLARDAKİ HALKA ÜZERİNDEKİ RENKLER; MAVİ, KIRMIZI, SARI, TURUNCU VE YEŞİLDİR. ",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "FLÖRE, GOLFTE SOPALARI TAŞIYAN ÇANTAYA VERİLEN İSİMDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "1839’DA THE GRAND NATIONAL AT YARIŞINDA KAZANAN İLK ATIN ADI CHAMPION'DUR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "NBA TAKIMLARINDAN LA LAKERS, EN UZUN GALİBİYET SERİSİNE SAHİP TAKIMDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜM ZAMANLARIN EN ÇOK ÖLÜM YAŞANAN SPORU, PARAŞÜTLE YÜKSEKTEN ATLAMA'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "SOVYETLER BİRLİĞİ 15 ÜLKEDEN OLUŞMUŞTU.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "TARİHTE BİLİNEN EN UZUN TÜRK DESTANI MANAS DESTANIDIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TÜRK TARİHİNDE KAĞIT VE MATBAAYI KULLANAN İLK TÜRK DEVLETİ GÖKTÜRKLERDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ORDUSUNDA ATLI SÜVARİLER KULLANARAK, DÜŞMANLARINA KARŞI BAŞARILI OLAN VE AVRUPA FEODALİTESİNİN KURUCUSU OLARAK ADLANDIRILAN KİŞİ CHARLES MARTEL'DİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "İNGILTERE, XVIII. YÜZYIL’DA ÜZERINDE GÜNEŞ'IN BATMADIĞI IMPARATORLUK OLARAK ANILMAKTAYDI.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "AVRUPA'DA SANAYI DEVRİMİ İLK OLARAK FRANSA'DA BAŞLAMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "TARİHTEKİ İLK HABER AJANSI CHARLES-LOUIS HAVAS TARAFINDAN KURULMUŞTUR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "OSMANLI İMPARATORLUĞUNDA ÇIKAN İLK RESMİ GAZETE LE MONITEUR OTTOMAN (OSMANLI AYNASI)'DIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "İTALYAN HÜMANİZMİNİN BAŞLANGICI OLARAK GIOVANNI BOCCACCIO KABUL EDİLMEKTEDİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "PİRAMİTLER SÜMERLER DÖNEMİNDE İNŞA EDİLMİŞTİR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "YAZI TUNÇ ÇAĞINDA KEŞFEDİLMİŞTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "MEVLÂNÂ CELÂLEDDÎN-I RÛMÎ ANADOLU'DA, SELÇUKLU DÖNEMİNDE YAŞAMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "HAMMURABİ KANUNLARI BABİLLER DÖNEMİNDE YAZILMIŞTIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "ÜLKEMİZDE ÇORUM, BOĞAZKÖY’DE YER ALAN VE 1986 UNESCO DÜNYA MİRAS LİSTESİNE ALINAN ‘HATTUŞAŞ’ KENTİ URARTULAR'IN BAŞKENTİDIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "MEZOPOTAMYA’DA KURULAN İLK ŞEHIR DEVLETLERİNDEN BİRİ ANTİK ROMA'DIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "İLK TAKVİM, M.Ö. 2000 YILLARINDA MISIRLILAR TARAFINDAN GELİŞTİRİLMIŞTİR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "KADEŞ ANTLAŞMASI, TARİHTE BELGELENMİŞ İLK YAZILI ANLAŞMADIR.",
      correctAnswer: Answer.yes,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "SELÇUKLU DÖNEMİNDE RUH VE SİNİR HASTALIKLARININ TEDAVİ EDİLDİĞİ YERE DARÜLKURA DENİRDİ.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question: "ÇALDIRAN SAVAŞI, BİZANS İMPARATORLUĞU’NUN GÜCÜNÜ SARSMIŞTIR.",
      correctAnswer: Answer.no,
    )),
    QuestionResult(
        question: AllQuestion(
      question:
          "RÖNESANS İTALYA’DA 15.YÜZYILIN SONUNDA ORTAYA ÇIKAN BİR YENİLENME SÜRECİDİR.",
      correctAnswer: Answer.no,
    )),
  ];

  bool answeredCorrectly;
  final AllQuestion question;

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
