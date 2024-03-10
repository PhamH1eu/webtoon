import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utilities/color.dart';
import '../utilities/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.background,
      child: Consumer(
        builder: (context, ref, child) => ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text("Wolhaiksong",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gilroy',
                      fontWeight: CustomColors.semiBold)),
              accountEmail: const Text("deptraicojsai@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gilroy',
                      fontWeight: CustomColors.regular)),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/user.jpg'),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/wallpaper.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.user,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('Profile',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.heart,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Liked Songs',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.earthAsia,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Language',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.message,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Contact us',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.lightbulb,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('FAQs',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                ref.read(countProvider.notifier).state = 1;
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.gear,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Settings',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                ref.read(countProvider.notifier).state = 2;
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                FontAwesomeIcons.moon,
                color: CustomColors.gray,
              ),
              title: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Dark mode',
                    style: TextStyle(
                      color: CustomColors.mainText,
                      fontWeight: CustomColors.semiBold,
                      fontFamily: 'Gilroy',
                    )),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}