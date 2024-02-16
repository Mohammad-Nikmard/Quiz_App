import 'package:flutter_quiz_application/data/question.dart';

List<Question> getQuestions() {
  var firstquestion = Question();
  firstquestion.title = "مشهورترین شعبده باز جهان چه کسی بود؟";
  firstquestion.imageNumber = "1";
  firstquestion.correctanswer = 1;
  firstquestion.answers = [
    "کریس آنجل",
    "هری هودینی",
    "دیوید کاپرفیلد",
    "ریکی جی",
  ];

  var secondquestion = Question();
  secondquestion.title = "اولین کسی که به ماه سفر کرد چه کسی بود؟";
  secondquestion.imageNumber = "2";
  secondquestion.correctanswer = 0;
  secondquestion.answers = [
    "نیل آرمسترانگ",
    "باز آلردین",
    "آلن بین",
    "آلبرت انیشتین",
  ];
  var thirdquestion = Question();
  thirdquestion.title = "بهترین فیزیکدان تاریخ چه کسی بود؟";
  thirdquestion.imageNumber = "3";
  thirdquestion.correctanswer = 1;
  thirdquestion.answers = [
    "ماری کوری",
    "ایزاک نیوتون",
    "نایل بور",
    "دیدیو اسکات",
  ];
  var forthquestion = Question();
  forthquestion.title = "اولین غواص در دنیا چه نام دارد؟";
  forthquestion.imageNumber = "4";
  forthquestion.correctanswer = 0;
  forthquestion.answers = [
    "ژاک کوستو",
    "تانیا استریتر",
    "الکسی موخانوف",
    "جیل هینبرت",
  ];
  var fifthquestion = Question();
  fifthquestion.title =
      "کدام کشور مردمانش بیشتر از بقیه ی کشور ها ماهی گیری میکنند؟";
  fifthquestion.imageNumber = "5";
  fifthquestion.correctanswer = 0;
  fifthquestion.answers = [
    "چین",
    "ایران",
    "برزیل",
    "آمریکا",
  ];
  var sixthquestion = Question();
  sixthquestion.title = "معروف ترین شیمیدان جهان چه کسی است؟";
  sixthquestion.imageNumber = "6";
  sixthquestion.correctanswer = 2;
  sixthquestion.answers = [
    "کاتلین لانسدیل",
    "آلفرد نوبل",
    "رابرت بونسن",
    "جان دالتون",
  ];
  var seventhquestion = Question();
  seventhquestion.title = "رکورد بلندترین پرش با نیزه دست کیست؟";
  seventhquestion.imageNumber = "7";
  seventhquestion.correctanswer = 2;
  seventhquestion.answers = [
    "آرموند دوپلانتیس",
    "تیاگو براز",
    "رنو لاویلنی",
    "جف هارتویگ",
  ];
  var eithquestion = Question();
  eithquestion.title = "کدام کمپانی بهترین موشک هارا تولید میکند؟";
  eithquestion.imageNumber = "8";
  eithquestion.correctanswer = 2;
  eithquestion.answers = [
    "بلو اوریجین",
    "راکت لب",
    "اسپیس ایکس",
    "اسپیس شاتل",
  ];
  var ninthquestion = Question();
  ninthquestion.title = "اولین ستاره شناس تاریخ چه کسی بود؟";
  ninthquestion.imageNumber = "9";
  ninthquestion.correctanswer = 0;
  ninthquestion.answers = [
    "حکیم بهریگو",
    "ابو مشعر",
    "وراهامیهیرا",
    "آجای بامبی",
  ];
  return [
    firstquestion,
    secondquestion,
    thirdquestion,
    forthquestion,
    fifthquestion,
    sixthquestion,
    seventhquestion,
    eithquestion,
    ninthquestion
  ];
}
