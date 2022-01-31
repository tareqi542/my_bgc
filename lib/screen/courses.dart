import 'package:flutter/material.dart';
import 'package:my_bgc/models/course_model.dart';
import 'package:my_bgc/repository/course_repo.dart';
import 'package:my_bgc/screen/course_details.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  final List<CourseModel> courseList = [];
  @override
  void initState() {
    super.initState();
    CourseRepo.getCourseList().then((value) {
      setState(() {
        courseList.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Coureses"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: courseList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CourseDetails(courseModel: courseList.elementAt(index)),
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
                      child: Text('${courseList[index].id}')),
                  title: Text(
                    '${courseList[index].couresName}',
                     style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  // For add subjects
                  // '${courseList[index].subjectList![index].subjName}'
                  subtitle: Text(
                    'The degree you want!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.school,
                    size: 40,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
