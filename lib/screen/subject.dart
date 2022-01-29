import 'package:flutter/material.dart';
import 'package:my_bgc/models/course_model.dart';

class SubjectView extends StatelessWidget {
  final List<BookList> bookList;
  const SubjectView({Key? key, required this.bookList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final book = bookList.elementAt(index);
    // print(bookList.length);
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: ListView.builder(
          itemCount: bookList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(
                  '${bookList[index].id} year',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.amber.shade50,
                    ),
                    child: ListTile(
                      title: Column(
                        children: [
                          Text(
                            '${bookList.elementAt(index).bookName1}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${bookList.elementAt(index).bookName2}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${bookList.elementAt(index).bookName3}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${bookList.elementAt(index).bookName4}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${bookList.elementAt(index).bookName5}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${bookList.elementAt(index).bookName6}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${bookList.elementAt(index).bookName7}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.bookmark),
                    )),
              ],
            );
            // for get book name of booklist
            // Text('${bookList.elementAt(index).bookName1}');
          },
        ));
  }
}
