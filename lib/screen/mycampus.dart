import 'package:flutter/material.dart';
class MyCampus extends StatelessWidget {
  const MyCampus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Campus"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'My Campus',
              style: TextStyle(fontSize: 25),
            ),
            Image.asset('assets/image/bgc_logo.png'),
            Text(
              "ব্রাহ্মণবাড়িয়া সরকারি কলেজ ব্রাহ্মণবাড়িয়ার একটি শীর্ষস্থানীয় এবং ঐতিহ্যবাহী শিক্ষাপ্রতিষ্ঠান। ব্রাহ্মণবাড়িয়া রেলস্টেশন হতে পূর্ব দিকে ২০০ গজ দূরে কলেজটি অবস্থিত। এই কলেজ বাংলাদেশ জাতীয় বিশ্ববিদ্যালয়-এর অধিভুক্ত।",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'পটভুমি',
              style: TextStyle(fontSize: 25),
            ),
            Image(
              image: AssetImage("assets/image/bgc_cover.jpg"),
              fit: BoxFit.cover,
            ),
            Text(
              "১৯৩৯ সালে দ্বিতীয় বিশ্বযুদ্ধ শুরু হলে ব্রিটিশ সৈন্যরা ফেনী কলেজে অবস্থান নেয়। তখন কয়েক বছরের জন্য অস্থায়ীভাবে ফেনী কলেজকে ফেনী থেকে ব্রাহ্মণবাড়িয়ায় স্থানান্তর করা হয়।[১] যুদ্ধ শেষে উক্ত কলেজটি আবার ফেনীতে ফিরে যায়। পরবর্তীতে সেখানে ওই অবকাঠামোর ওপরই ১৯৪৮ সালে[২] এলাকার গুণীব্যক্তিদের উদ্যোগে ব্রাহ্মণবাড়িয়া কলেজ বেসরকারিভাবে স্থাপিত হয় এবং ১৯৭৯ সালে কলেজটি জাতীয়করণ হয় । প্রাথমিক পর্যায়ে কলেজটিতে উচ্চ মাধ্যমিক ও স্নাতক পাস কোর্স চালু হয় । ১৯৯৩-৯৪ শিক্ষাবর্ষ হতে গণিত ও রাষ্ট্রবিজ্ঞান বিষয়ে অনার্স কোর্স শুরু হয় । ধীরে ধীরে কলেজটিতে আরো ১২ টির অধিক বিষয়ে অনার্স , মাস্টার্স কোর্স চালু করা হয়",
              style: TextStyle(fontSize: 16),
            )
          ]),
        ),
      ),
    );
  }
}
