import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:molefocs/presentation/home/menu_navbar/about_us/about_us.dart';
import 'package:molefocs/presentation/home/menu_navbar/reference/reference.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_final/final_main.dart';
import 'package:molefocs/presentation/home/menu_navbar/term_mid/mid_main.dart';
import 'package:molefocs/presentation/home/menu_navbar/user_guides/user_guides.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Molefocs'),
            accountEmail: const Text('molefocs@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logo_molefocs1.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/home_image1.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('User Guide'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const userGuides())),
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('About us'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const aboutUs())),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Acknowledgements'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const reference())),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.quiz),
            title: const Text('Mid Term Review'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const midMain())),
          ),
          ListTile(
            leading: const Icon(Icons.quiz),
            title: const Text('Final Term Review'),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const finalMain())),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
