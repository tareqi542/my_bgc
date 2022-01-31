import 'package:flutter/material.dart';

class MyAdmission extends StatelessWidget {
  const MyAdmission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    String _text1 =
        "একাদশ শ্রেণিতে ভর্তির জন্য শিক্ষার্থীদের প্রথম পর্যায়ে আবেদন করতে হবে এবং প্রথম পর্যায় আবেদনের তারিখ কিছুদিন পরেই প্রকাশ করা হবে। পর্যায়ে সম্পন্ন অনলাইনে আবেদন করতে হবে এবং শিক্ষার্থীকে যোগ্যতার বিচারে দশটি কলেজে চয়েস দিতে হবে। যোগ্যতার বিচারে বাংলাদেশ শিক্ষা বোর্ড কর্তৃক যাচাই-বাছাই করে শিক্ষার্থীর জন্য প্রযোজ্য কলেজ সিলেক্ট করে দেওয়া হবে এবং সেখানে শিক্ষার্থী ভর্তি হতে পারবে। শিক্ষার্থীর যদি কলেজ পছন্দ না হয় তাহলে মাইগ্রেশনের সুযোগ থাকবে মাইগ্রেশন এর ফলে শিক্ষার্থীদের পছন্দের কলেজের উর্ধ্বক্রম এর যেকোনো একটি কলেজে আসন সংখ্যা ফাঁকা থাকলে সেখানে ভর্তি হতে পারবে। কলেজ চয়েজ অবশ্যই চিন্তা করে দিতে হবে যেন ভালো কলেজগুলো নিচের দিকে না যায়। অংশে ভালো কলেজ থাকলে শিক্ষার্থী পরবর্তীতে মাইগ্রেশন করলে উপরের যেকোন স্বল্প মানের কলেজে মাইগ্রেশন চলে যেতে পারে সেজন্য অবশ্যই সতর্ক থাকতে হবে";
    String _text2 =
        "জাতীয় বিশ্ববিদ্যালয়ের অধিভুক্ত স্নাতক (সম্মান) শ্রেণিতে পাঠদানকারী কলেজসমূহে ২০২০-২০২১ শিক্ষাবর্ষে ১ম বর্ষ স্নাতক (সম্মান) শ্রেণির ভর্তির প্রাথমিক আবেদন অনলাইনে শুরু হবে। আগ্রহী প্রার্থীকে জাতীয় বিশ্ববিদ্যালয়ের ভর্তি বিষয়ক ওয়েবসাইট থেকে আবেদন ফরম পূরণ করতে হবে এবং প্রাথমিক আবেদন ফি কলেজ কর্তৃক নির্ধারিত মােবাইল ব্যাকিং এর মাধ্যমে নির্দিষ্ট সময়ের মধ্যে অবশ্যই জমা দিতে হবে।";

    String _text3 =
        "জাতীয় বিশ্ববিদ্যালয় মাস্টার্স প্রাথমিক ভর্তি বিজ্ঞপ্তি ২৩ ফেব্রুয়ারী প্রকাশিত হয়। জাতীয় বিশ্ববিদ্যালয়ের মাস্টার্স ভর্তি কর্তৃপক্ষ আবেদনের জন্য জাতীয় বিশ্ববিদ্যালয় মাস্টার্স অফিসিয়াল ওয়েব ঠিকানায www.nu.ac.bd/adifications-র মাধ্যমে আহ্বান জানিয়েছে । যারা জা.বি মাস্টার্স প্রোগ্রামে ভর্তি হতে চান তাদের এই বিজ্ঞপ্তিটি মনযোগের সাথে পড়া উচিত। মাস্টার্স ভর্তির  আবেদনের সময়কাল ২০২০ সালের ০৮ মার্চ রাত ১১ঃ৫৯ অবধি চলবে এবং ২৫ ফেব্রুয়ারী ২০২০ বিকাল ০৪ঃ০০ থেকে শুরু হবে।";
    return Scaffold(
        appBar: AppBar(
          title: Text('Admission'),
        ),
        body: SingleChildScrollView(

          child: Padding(
            
            padding: const EdgeInsets.only(
              left: 7,
              right: 7,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/image/bgc_cover.jpg"),
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5,
                ),

                // http://xiclassadmission.gov.bd/
                Text(
                  'HSC',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  _text1,
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Click Here XI'),
                ),
                // http://app5.nu.edu.bd/nu-web/application/honsApplicationForm
                Text(
                  'Honors',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  _text2,
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Click Here Hons'),
                ),

                Text(
                  'Masters',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _text3,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
// http://app5.nu.edu.bd/nu-web/msapplicant/honsDataEntryHome
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Click Here MS'),
                ),
              ],
            ),
          ),
        ));
  }
}
