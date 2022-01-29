import 'package:flutter/material.dart';

Widget myContainer({
  required BuildContext context,
  required String? name,
  required Color? color,
  required IconData? icon,
  required VoidCallback? ontap,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      height: 150,
      width: MediaQuery.of(context).size.width * .45,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ]),
    ),
  );
}