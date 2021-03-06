import 'package:flutter/material.dart';

import 'admins/admins_model.dart';

class MyAdminstration extends StatelessWidget {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  const MyAdminstration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //obbject here
    String img = 'assets/image/man.png';
    List<Admins> adminList = [
      Admins(
        id: 1,
        img: img,
        name: "Dr. Mohammad Shah Alam",
        designation: "Principal",
      ),
      Admins(
        id: 2,
        img: img,
        name: "Mr. Bibutibhushan Debnath",
        designation: "Vice-Principal",
      ),
      Admins(
        id: 3,
        name: "Abdul Wahed",
        img: img,
        designation: "Head of examniner",
      ),
      Admins(
        id: 4,
        name: "Mr.Talukder ",
        img: img,
        designation: "Sindicate Member",
      ),
      Admins(
        id: 5,
        name: "Mr. Hasan",
        img: img,
        designation: "Sindicate Member",
      ),
      Admins(
        id: 6,
        name: "Mr. Islam",
        img: img,
        designation: "Sindicate Member",
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Adminstration'),
        ),
        body: ListView.builder(
          itemCount: adminList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ListTile(
                focusColor: Colors.white,
                leading: Image.asset('${adminList[index].img}'),
                title: Text(
                  '${adminList[index].name}',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                subtitle: Text(
                  '${adminList[index].designation}',
                  textAlign: TextAlign.justify,
                ),
                // trailing: InkWell(
                //   onTap: () => print('Call button tapped'),
                //   onDoubleTap: () => print('Call button double tapped'),
                //   child: Icon(
                //     Icons.phone,
                //   ),
                // ),
              ),
            );
          },
        ));
  }
}
