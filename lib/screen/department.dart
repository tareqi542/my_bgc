import 'package:flutter/material.dart';
import 'package:my_bgc/models/dept_model.dart';
import 'package:my_bgc/repository/dept_repo.dart';
import 'package:my_bgc/screen/dept_details.dart';

class DepartmentView extends StatefulWidget {
  const DepartmentView({Key? key}) : super(key: key);

  @override
  State<DepartmentView> createState() => _DepartmentViewState();
}

class _DepartmentViewState extends State<DepartmentView> {
  final List<DepartmentModel> deptList = [];
  @override
  void initState() {
    super.initState();
    DepartmentRepo.getDepartmentList().then((value) {
      setState(() {
        deptList.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Departmens'),
        ),
        body: ListView.builder(
          itemCount: deptList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DepartmentDetails(
                        departmentModel: deptList.elementAt(index)),
                  )),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 120.0,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListTile(
                  textColor: Colors.black,
                  leading: CircleAvatar(
                      backgroundColor: Colors.black45.withOpacity(0.3),
                      foregroundColor: Colors.white,
                      child: Text('${deptList[index].id}')),
                  title: Text(
                    '${deptList[index].deptName}',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  subtitle: Text(
                    'a dept of sceince faculty',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.home_work_outlined,
                     size: 40,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
