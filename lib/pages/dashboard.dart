import 'package:flutter/material.dart';

import 'package:my_task/pages/menu_end_drawer.dart';
import 'package:my_task/providers/all_providers.dart';

import 'package:provider/provider.dart';

import '../widgets/add_employe_container.dart';
import '../widgets/add_task_container.dart';
import '../widgets/members.dart';
import 'profile_drawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AllProvider>(context);
    return SafeArea(
      child: Scaffold(
        drawer: const ProfileDrawer(),
        endDrawer: const MenuDrawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(builder: (context) {
            return GestureDetector(
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Image.asset('assets/images/dashboard/Group 7.png'));
          }),
          actions: [
            Builder(builder: (context) {
              return GestureDetector(
                  onTap: () => Scaffold.of(context).openEndDrawer(),
                  child: Image.asset('assets/images/dashboard/Group 13.png'));
            }),
          ],
          title: const Text(
            "12 JULY 2022",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff181743),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/members/Path 7.png'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 30),
                child: provider.memeberStatus
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Members(),
                          const SizedBox(height: 15),
                          ListView.separated(
                            controller:
                                ScrollController(keepScrollOffset: true),
                            shrinkWrap: true,
                            itemCount: 13,
                            separatorBuilder: (_, __) =>
                                const SizedBox(height: 15),
                            itemBuilder: (context, int index) {
                              return const Members();
                            },
                          ),
                        ],
                      )
                    : dashboard()),
          ),
        ),
        floatingActionButton: Stack(children: [
          Container(
            height: 81.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/members/Path 11315.png'),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: GestureDetector(
                  onTap: () {
                    provider.memeberStatus
                        ? provider.addMembershowBottomSheet(context)
                        : provider.addTaskshowBottomSheet(context);
                  },
                  child: provider.memeberStatus
                      ? const AddEmplyeContainer()
                      : const AddTaskConatainer()),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget dashboard() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      //calender
      // Calender()
    ],
  );
}
