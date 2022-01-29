import 'package:flutter/services.dart';
import 'package:my_bgc/models/dept_model.dart';

class DepartmentRepo {
  static Future<List<DepartmentModel>> getDepartmentList() async {
    final response = await rootBundle.loadString('assets/json/dept_list.json');
    if (response == null) {
      return [];
    } else {
      return departmentModelFromJson(response);
    }
  }
}
