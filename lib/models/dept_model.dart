// To parse this JSON data, do
//
//     final departmentModel = departmentModelFromJson(jsonString);

import 'dart:convert';

List<DepartmentModel> departmentModelFromJson(String str) =>
    List<DepartmentModel>.from(
        json.decode(str).map((x) => DepartmentModel.fromJson(x)));

class DepartmentModel {
  DepartmentModel({
    this.id,
    this.deptName,
    this.img,
    this.teacherList,
  });

  int? id;
  String? deptName;
  String? img;
  List<TeacherList>? teacherList;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      DepartmentModel(
        id: json["id"],
        deptName: json["dept_name"],
        img: json["img"] == null ? null : json["img"],
        teacherList: List<TeacherList>.from(
            json["teacher_list"].map((x) => TeacherList.fromJson(x))),
      );
}

class TeacherList {
  TeacherList({
    this.id,
    this.name,
    this.img,
    this.design,
    this.education,
    this.phone,
    this.email,
  });

  int? id;
  String? name;
  String? img;
  String? design;
  String? education;
  String? phone;
  String? email;

  factory TeacherList.fromJson(Map<String, dynamic> json) => TeacherList(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        design: json["design"],
        education: json["education"],
        phone: json["phone"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "design": design,
        "education": education,
        "phone": phone,
        "email": email,
      };
}
