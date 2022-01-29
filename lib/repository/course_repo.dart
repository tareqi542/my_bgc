import 'package:flutter/services.dart';
import 'package:my_bgc/models/course_model.dart';

class CourseRepo{
  static Future <List<CourseModel>> getCourseList ()async{
     final response = await rootBundle.loadString('assets/json/course_list.json');
    if (response == null){
      return[];
    } else {
      return courseModelFromJson(response);
    }
  }
}