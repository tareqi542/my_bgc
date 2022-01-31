import 'package:flutter/material.dart';
import 'package:my_bgc/components/exit.dart';
import 'package:my_bgc/components/image_slider.dart';
import 'package:my_bgc/components/mycontainer.dart';
import 'package:my_bgc/components/routes.dart';
import 'package:my_bgc/screen/about.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Brahmanbaria Govt.College'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Text(
                  'Wellcome to BGC',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, AppRoute.initRoute);
                  // ...
                },
              ),
              ListTile(
                title: const Text('Share'),
                leading: Icon(Icons.share),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pushNamed(context, AppRoute.more);
                },
              ),
              ListTile(
                title: const Text('About'),
                leading: Icon(Icons.info),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutView(),
                      ));
                  // ...
                },
              ),
              ListTile(
                title: const Text('Exit'),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  showExitPopup(context);
                  // Navigator.pop(context);
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
                    icon: Icons.home_work,
                    ontap: () {
                      Navigator.pushNamed(context, AppRoute.dept);

                      print('tappedcontainer');
                    },
                  ),
                  myContainer(
                    context: context,
                    name: 'Admission',
                    color: Colors.amber,
                    icon: Icons.note_add,
                    ontap: () {
                      Navigator.pushNamed(context, AppRoute.admission);
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
                    name: 'Adminstration',
                    color: Colors.amber,
                    icon: Icons.admin_panel_settings,
                    ontap: () {
                      Navigator.pushNamed(context, AppRoute.admin);
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
      ),
    );
  }
}
