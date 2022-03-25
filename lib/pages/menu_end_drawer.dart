import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_task/providers/all_providers.dart';
import 'package:provider/provider.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? w = const Color(0xffffffff);
    return Container(
      // width: MediaQuery.of(context).size.width * 0.90,
      child: Drawer(
          child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/enddrawer/Path 11288.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/enddrawer/Group 69.png'),
                        const SizedBox(width: 110),
                        Text(" Menu", style: TextStyle(fontSize: 20, color: w)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-Home.png'),
                        const SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {
                            Provider.of<AllProvider>(context, listen: false)
                                .dashboard();
                            Navigator.pop(context);
                          },
                          child: Text(" Dashboard",
                              style: TextStyle(fontSize: 20, color: w)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-3-User.png'),
                        const SizedBox(width: 11),
                        Text("Employees",
                            style: TextStyle(fontSize: 20, color: w)),
                        const SizedBox(width: 11),
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-Arrow---Down-2.png'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const SizedBox(width: 36),
                        Icon(
                          CupertinoIcons.minus,
                          color: w,
                        ),
                        Text(" Members",
                            style: TextStyle(fontSize: 20, color: w)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-Work.png'),
                        const SizedBox(width: 12),
                        Text(" Task Dashboard",
                            style: TextStyle(fontSize: 20, color: w)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-Paper.png'),
                        const SizedBox(width: 12),
                        Text(" Encrypted Notes",
                            style: TextStyle(fontSize: 20, color: w)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-Profile.png'),
                        const SizedBox(width: 12),
                        Text(" Admin",
                            style: TextStyle(fontSize: 20, color: w)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                            'assets/images/enddrawer/Iconly-Broken-2-User.png'),
                        const SizedBox(width: 12),
                        Text(" Manager Activity",
                            style: TextStyle(fontSize: 20, color: w)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
