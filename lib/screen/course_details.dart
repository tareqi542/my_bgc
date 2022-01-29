import 'package:flutter/material.dart';
import 'package:my_bgc/models/course_model.dart';
import 'package:my_bgc/repository/course_repo.dart';
import 'package:my_bgc/screen/subject.dart';

class CourseDetails extends StatefulWidget {
  final CourseModel courseModel;
  const CourseDetails({Key? key, required this.courseModel}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  final List<CourseModel> subjectList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CourseRepo.getCourseList().then((value) {
      setState(() {
        subjectList.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.courseModel.couresName}'),
        ),
        body: ListView.builder(
          itemCount: widget.courseModel.subjectList!.length,
          itemBuilder: (context, index) {
            final SubjectList subject =
                widget.courseModel.subjectList!.elementAt(index);
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SubjectView(bookList: subject.bookList!),
                    ));
              },
              child: Card(
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 100,
                    decoration: BoxDecoration(color: Colors.amber.shade50),
                    child: ListTile(
                      textColor: Colors.black,
                      leading: CircleAvatar(
                          backgroundColor: Colors.black45.withOpacity(0.3),
                          foregroundColor: Colors.white,
                          child: Text('${subject.id}')),
                      title: Text(
                        '${subject.subjName}',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('A 4 years long course'),
                      trailing: Icon(Icons.menu_book_outlined),
                    )),
              ),
            );
          },
        ));
  }
}
