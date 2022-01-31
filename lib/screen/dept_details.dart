import 'package:flutter/material.dart';
import 'package:my_bgc/models/dept_model.dart';

class DepartmentDetails extends StatelessWidget {
  final DepartmentModel departmentModel;
  const DepartmentDetails({Key? key, required this.departmentModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${departmentModel.deptName}'),
      ),
      body: ListView.builder(
        itemCount: departmentModel.teacherList!.length,
        itemBuilder: (context, index) {
          final TeacherList teacher =
              departmentModel.teacherList!.elementAt(index);
          return Card(
            child: Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.amber.shade50),
                child: ListTile(
                  textColor: Colors.black,
                  title: Text(
                    '${teacher.name}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('${teacher.design}'),
                        Text('${teacher.education}')
                      ]),
                  trailing: Icon(
                    Icons.call,
                    size: 25,
                  ),
                )),
          );
        },
      ),
    );
  }
}
