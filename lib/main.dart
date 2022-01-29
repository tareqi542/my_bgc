import 'package:flutter/material.dart';
import 'package:my_bgc/components/routes.dart';
import 'package:my_bgc/screen/adminstration.dart';
import 'package:my_bgc/screen/admission.dart';
import 'package:my_bgc/screen/contacts.dart';
import 'package:my_bgc/screen/courses.dart';
import 'package:my_bgc/screen/department.dart';
import 'package:my_bgc/screen/more.dart';
import 'package:my_bgc/screen/mycampus.dart';
import 'screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,
      ),
      initialRoute: AppRoute.initRoute,
      routes: <String, WidgetBuilder>{
        AppRoute.initRoute: (Context) => HomePage(),
        AppRoute.dept: (Context) => DepartmentView(),
        AppRoute.campus: (Context) => MyCampus(),
        AppRoute.course: (Context) => MyCourses(),
        AppRoute.admin: (Context) => MyAdminstration(),
        AppRoute.admission: (Context) => MyAdmission(),
        AppRoute.more: (Context) => MoreView(),
      },
    );
  }
}
