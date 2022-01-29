import 'package:flutter/material.dart';
import 'package:my_bgc/models/course_model.dart';

class SubjectView extends StatelessWidget {
  final CourseModel courseModel;
  const SubjectView({Key? key, required this.courseModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${courseModel.subjectList}'),
        ),
        body: ListView.builder(
          itemCount: courseModel.bookList!.length,
          itemBuilder: (context, index) {
            final BookList book = courseModel.bookList.elementAt(index);

            return Card(
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(color: Colors.amber.shade50),
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          '${book.bookName1}',
                          // style: TextStyle(
                          //     fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text('${book.bookName1}'),
                        Text('${book.bookName2}'),
                        Text('${book.bookName3}'),
                        Text('${book.bookName4}'),
                        Text('${book.bookName5}'),
                        Text('${book.bookName7}'),
                        Text('${book.bookName8}'),
                        Text('${book.bookName9}'),
                        Text('${book.bookName10}'),
                      ],
                    ),
                    subtitle: Text(
                      'writer or details',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    trailing: Icon(Icons.bookmark),
                  )),
            );
          },
        ));
  }
}
