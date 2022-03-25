import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/all_providers.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Admin Profile",
                  style: TextStyle(fontSize: 16, color: Color(0xff181743)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.asset('assets/images/drawer/Ellipse 288.png'),
            const SizedBox(height: 30),
            const Text("Anshul Berry",
                style: TextStyle(fontSize: 20, color: Color(0xff181743))),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("anshul@gmai.com",
                    style: TextStyle(fontSize: 16, color: Color(0xff181743))),
                Image.asset(
                    'assets/images/drawer/Iconly-Broken-Edit-Square.png')
              ],
            ),
            // Container(
            //   height: 10,
            //   width: MediaQuery.of(context).size.width * 1,
            //   color: Color.fromARGB(12, 0, 0, 0),
            // )
          ]),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                        'assets/images/drawer/Iconly-Broken-Calendar.png'),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      // onTap: Provider.of<AllProvider>(context).dashboard(),
                      child: const Text(" My Task",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff181743))),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Image.asset(
                        'assets/images/drawer/Iconly-Broken-3-User.png'),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<AllProvider>(context, listen: false)
                            .memeber();
                        Navigator.pop(context);
                      },
                      child: const Text("Members",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff181743))),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Image.asset(
                        'assets/images/drawer/Iconly-Broken-Logout.png'),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(" Logout",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff181743))),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
