import 'package:flutter/material.dart';
import 'package:my_bgc/components/mycontainer.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreView extends StatefulWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  final String _url = 'https://mujib100.gov.bd/';

  void _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myContainer(
                  context: context,
                  name: 'Mujib 100',
                  color: Colors.amber,
                  icon: Icons.contacts,
                  ontap: () {
                    setState(() {
                      _launchURL();
                    });

                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'WebSite', //all syllabus here
                  color: Colors.amber,
                  icon: Icons.school,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.course);
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
                  name: 'NU Web',
                  color: Colors.amber,
                  icon: Icons.home_work_outlined,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.dept);

                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Edu Ministry',
                  color: Colors.amber,
                  icon: Icons.admin_panel_settings,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.admin);
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
                  name: 'Notice Board',
                  color: Colors.amber,
                  icon: Icons.notifications,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.admission);
                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Live Class',
                  color: Colors.amber,
                  icon: Icons.live_help,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.contact);
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
                  name: 'BanglaDesh',
                  color: Colors.amber,
                  icon: Icons.details,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.admission);
                    print('tappedcontainer');
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Contacts',
                  color: Colors.amber,
                  icon: Icons.contact_phone,
                  ontap: () {
                    // Navigator.pushNamed(context, AppRoute.contact);
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
