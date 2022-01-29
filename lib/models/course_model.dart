// To parse this JSON data, do
//
//     final courseModel = courseModelFromJson(jsonString);

import 'dart:convert';

List<CourseModel> courseModelFromJson(String str) => List<CourseModel>.from(
    json.decode(str).map((x) => CourseModel.fromJson(x)));

class CourseModel {
  CourseModel({
    this.id,
    this.couresName,
    this.subjectList,
  });

  int? id;
  String? couresName;
  List<SubjectList>? subjectList;

  factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        id: json["id"],
        couresName: json["coures_name"],
        subjectList: List<SubjectList>.from(
            json["subject_list"].map((x) => SubjectList.fromJson(x))),
      );

  get bookList => bookList;
}

class SubjectList {
  SubjectList({
    this.id,
    this.subjName,
    this.bookList,
  });

  int? id;
  String? subjName;
  List<BookList>? bookList;

  factory SubjectList.fromJson(Map<String, dynamic> json) => SubjectList(
        id: json["id"],
        subjName: json["subj_name"],
        bookList: List<BookList>.from(
            json["book_list"].map((x) => BookList.fromJson(x))),
      );
}

class BookList {
  BookList({
    this.id,
    this.bookName1,
    this.bookName2,
    this.bookName3,
    this.bookName4,
    this.bookName5,
    this.bookName6,
    this.bookName7,
    this.bookName8,
    this.bookName9,
    this.bookName10,
  });

  int? id;
  String? bookName1;
  String? bookName2;
  String? bookName3;
  String? bookName4;
  String? bookName5;
  String? bookName6;
  String? bookName7;
  String? bookName8;
  String? bookName9;
  String? bookName10;

  factory BookList.fromJson(Map<String, dynamic> json) => BookList(
        id: json["id"],
        bookName1: json["book_name1"],
        bookName2: json["book_name2"],
        bookName3: json["book_name3"],
        bookName4: json["book_name4"],
        bookName5: json["book_name5"],
        bookName6: json["book_name6"],
        bookName7: json["book_name7"],
        bookName8: json["book_name8"],
        bookName9: json["book_name9"],
        bookName10: json["book_name10"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "book_name1": bookName1,
        "book_name2": bookName2,
        "book_name3": bookName3,
        "book_name4": bookName4,
        "book_name5": bookName5,
        "book_name6": bookName6,
        "book_name7": bookName7,
        "book_name8": bookName8,
        "book_name9": bookName9,
        "book_name10": bookName10,
      };
}
