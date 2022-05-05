import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job4u/constant/comstants.dart';
import 'package:job4u/pages/aboutUs.dart';
import 'package:job4u/pages/sections/DoctorSection.dart';
import 'package:job4u/pages/sections/EducationSection.dart';
import 'package:job4u/pages/sections/EngineeringSection.dart';
import 'package:job4u/pages/sections/GraphicSections.dart';
import 'package:job4u/pages/sections/LawSection.dart';
import 'package:job4u/pages/sections/ServiceSection.dart';
import 'package:job4u/pages/sections/businessSection.dart';
import 'package:job4u/pages/sections/marktingSection.dart';
import 'package:job4u/pages/sections/programmingSection.dart';
import 'package:job4u/pages/sections/scienceSection.dart';
import 'package:job4u/services/colors.dart';

import '../business_logic/cubit/app_cubit.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var _cubit=  BlocProvider.of<AppCubit>(context);
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              arrowColor: mainColor,
              currentAccountPicture: CircleAvatar(
                backgroundColor: secColor,
                backgroundImage: const AssetImage(
                    'assets/images/Cartoon-Pic-Ideas-for-DP-Profile-02-768x768-removebg-preview.png'),
              ),
              accountName:  Text('Ahmed Raafat'),
              accountEmail:  Text(_cubit.getLoginUser().email!)),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(
                context,
              );
            },
          ),
          const Divider(
            thickness: 1,
            height: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(Icons.devices),
            title: const Text('Programming'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const programmingSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Business'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const businessSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Markting'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const marktingSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.science),
            title: const Text('Health Science'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const scienceSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.graphic_eq),
            title: const Text('Graphic Design'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GraphicSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.cast_for_education),
            title: const Text('Education'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EducationSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_outlined),
            title: const Text('Law'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const lawSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.engineering),
            title: const Text('Engineering'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EngineeringSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.medical_services),
            title: const Text('Medical Team'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DoctorSection()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.design_services),
            title: const Text('Services Industry'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ServiceSection()));
            },
          ),
          const Divider(
            thickness: 1,
            height: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_support,
            ),
            title: const Text(
              'About Us',
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutUs()));
            },
          ),
          ListTile(
            leading:  Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              'Sign Out',
            ),
            onTap: () async {
              await _cubit.logOut();
              Navigator.of(context).pushReplacementNamed(signInPage);
            },
          ),
        ],
      ),
    );
  }
}
