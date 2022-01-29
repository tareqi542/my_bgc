import 'package:flutter/material.dart';
import 'package:my_bgc/components/image_slider.dart';
import 'package:my_bgc/components/mycontainer.dart';
import 'package:my_bgc/components/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brahmanbaria Govt.Collage'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Hey There',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Search'),
              leading: Icon(Icons.search),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('About'),
              leading: Icon(Icons.info),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // MyImageSlider(),
            Container(height: 190, child: MyImageSlider()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myContainer(
                  context: context,
                  name: 'My Campus',
                  color: Colors.amber,
                  icon: Icons.home,
                  ontap: () {
                    Navigator.pushNamed(context, AppRoute.campus);
                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Courses', //all syllabus here
                  color: Colors.amber,
                  icon: Icons.school,
                  ontap: () {
                    Navigator.pushNamed(context, AppRoute.course);
                    print('tappedcontainer');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myContainer(
                  context: context,
                  name: 'Departments',
                  color: Colors.amber,
                  icon: Icons.home_work_outlined,
                  ontap: () {
                    Navigator.pushNamed(context, AppRoute.dept);

                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Adminstration',
                  color: Colors.amber,
                  icon: Icons.admin_panel_settings,
                  ontap: () {
                    Navigator.pushNamed(context, AppRoute.admin);
                    print('tappedcontainer');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myContainer(
                  context: context,
                  name: 'Admission',
                  color: Colors.amber,
                  icon: Icons.add,
                  ontap: () {
                    Navigator.pushNamed(context, AppRoute.admission);
                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'More',
                  color: Colors.amber,
                  icon: Icons.more_horiz,
                  ontap: () {
                    Navigator.pushNamed(context, AppRoute.more);
                    print('tappedcontainer');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
