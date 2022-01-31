import 'package:flutter/material.dart';
import 'package:my_bgc/components/mycontainer.dart';
import 'package:my_bgc/config/helper.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreView extends StatefulWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  State<MoreView> createState() => _MoreViewState();
}

class _MoreViewState extends State<MoreView> {
  final String mujib100Web = 'https://mujib100.gov.bd/';
  final String bdPortal = ' https://bangladesh.gov.bd/index.php';
  final String nuWeb = 'https://nu.ac.bd/';
  final String bgcWeb = 'http://bgc.edu.bd/';
  final String eduMins = 'http://www.moedu.gov.bd/';
  final String noticWeb = 'https://web.facebook.com/groups/BGColl';
  final String livWeb =
      'https://web.facebook.com/Brahmanbaria-Govt-College-815319538637623';
  final String contactWeb = 'mailto:tarequlislam542@yahoo.com';
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Impotants Links"),
      ),
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
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(mujib100Web);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
                myContainer(
                  context: context,
                  name: 'BanglaDesh',
                  color: Colors.amber,
                  icon: Icons.web,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(bdPortal);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
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
                  //
                  color: Colors.amber,
                  icon: Icons.home_work,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(nuWeb);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
                myContainer(
                  context: context,
                  name: 'BGC Web', //all syllabus here
                  color: Colors.amber,
                  icon: Icons.school,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(bgcWeb);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myContainer(
                  context: context,
                  name: 'Edu. Ministry',
                  color: Colors.amber,
                  icon: Icons.admin_panel_settings,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(eduMins);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Notice Board',
                  color: Colors.amber,
                  icon: Icons.notifications,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(noticWeb);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myContainer(
                  context: context,
                  name: 'Live Class',
                  color: Colors.amber,
                  icon: Icons.live_help,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(livWeb);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
                myContainer(
                  context: context,
                  name: 'Contacts',
                  color: Colors.amber,
                  icon: Icons.contact_phone,
                  ontap: () async {
                    if (await initConnectivity()) {
                      _launchURL(contactWeb);
                      print('tappedcontainer');
                    } else {
                      final snackBar = SnackBar(
                          content: Text("Please Connect With Internet"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
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
