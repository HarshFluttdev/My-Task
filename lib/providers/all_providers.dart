import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_edit_text.dart';

class AllProvider extends ChangeNotifier {
  bool memeberStatus = false;
  int groupValue = -1;

  void changeRadio(newValue) {
    groupValue = newValue;
    notifyListeners();
  }

  void memeber() {
    memeberStatus = true;
    notifyListeners();
  }

  void dashboard() {
    memeberStatus = false;
    notifyListeners();
  }

  Future<void> addMembershowBottomSheet(context) async {
    return showModalBottomSheet(
        isScrollControlled: true,
        // shape: ShapeBorder.lerp(null, null, 738),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 738,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/members/Path 7.png'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/members/Ellipse 288.png'),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Row(
                          children: [
                            Container(
                              height: 39,
                              width: 98,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                  ),
                                  color: Color(0xffEFEFEF)),
                              child: const Center(
                                child: Text(
                                  "Choose File",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            Container(
                              height: 39,
                              width: 98,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: const Color(0xffEFEFEF)),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                  ),
                                  color: const Color(0xffFFFFFF)),
                              child: const Center(
                                child: Text(
                                  "No File Chosen",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffFFB8B8)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28, right: 28),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppEditTextField(onHeight: 42, onWidth: 149),
                            AppEditTextField(
                                onHeight: 42,
                                onWidth: 149,
                                suffixIcon: ImageIcon(AssetImage(
                                    "assets/images/enddrawer/Iconly-Broken-Arrow---Down-2.png"))),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppEditTextField(onHeight: 42, onWidth: 149),
                            AppEditTextField(
                                onHeight: 42,
                                onWidth: 149,
                                suffixIcon: ImageIcon(AssetImage(
                                    "assets/images/addEmployee/Iconly-Broken-Calendar.png"))),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            AppEditTextField(onHeight: 42, onWidth: 149),
                            AppEditTextField(
                                onHeight: 42,
                                onWidth: 149,
                                suffixIcon: ImageIcon(AssetImage(
                                    "assets/images/addEmployee/Iconly-Broken-Show.png"))),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const AppEditTextField(onHeight: 135, onWidth: 319),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Image.asset(
                                "assets/images/addEmployee/Iconly-Broken-Tick-Square.png"),
                            const SizedBox(width: 10),
                            const Text(
                              "Active Status",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff3A3A3A)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 135),
                  Container(
                    height: 46,
                    width: 75,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                      gradient: LinearGradient(
                        colors: [Color(0xff52295D), Color(0xff5A3364)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 255, 255, 0.3),
                          // spreadRadius: 5,
                          blurRadius: 6,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Save",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Future<void> addTaskshowBottomSheet(context) {
    return showModalBottomSheet(
        // isScrollControlled: true,
        // shape: ShapeBorder.lerp(null, null, 738),
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 550,
            child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/images/addTask/Line 45.png"),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 20),
                        child: Text(
                          "Add Task",
                          style: TextStyle(
                              color: Color(0xff23274F),
                              fontSize: 29,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 18.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Attachment 1",
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "(doc,pdf,image,audio)",
                                      style: TextStyle(
                                        color: Color(0xffB6B6B6),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                      "assets/images/addTask/Iconly-Broken-Discovery.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 62.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 27,
                                          width: 71,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5.0),
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                              ),
                                              color: Color(0xffEFEFEF)),
                                          child: const Center(
                                            child: Text(
                                              "Choose File",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 27,
                                          width: 201,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xffEFEFEF)),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(5.0),
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                              ),
                                              color: const Color(0xffFFFFFF)),
                                          child: const Center(
                                            child: Text(
                                              "No File Chosen",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffFFB8B8)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 18.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Attachment 2",
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "(doc,pdf,image,audio)",
                                      style: TextStyle(
                                        color: Color(0xffB6B6B6),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                      "assets/images/addTask/Iconly-Broken-Discovery.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 62.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 27,
                                          width: 71,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5.0),
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                              ),
                                              color: Color(0xffEFEFEF)),
                                          child: const Center(
                                            child: Text(
                                              "Choose File",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 27,
                                          width: 201,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xffEFEFEF)),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(5.0),
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                              ),
                                              color: const Color(0xffFFFFFF)),
                                          child: const Center(
                                            child: Text(
                                              "No File Chosen",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffFFB8B8)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      // Category Column
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff200A4D)),
                              ),
                            ),
                            Column(
                              children: const [
                                Text("Radio button row"),
                                // _myRadioButton(
                                //     context: context,
                                //     title: "Checkbox 0",
                                //     value: 0,
                                //     onChanged: (newValue) =>
                                //         Provider.of<AllProvider>(context,
                                //                 listen: false)
                                //             .changeRadio(newValue)),
                                // _myRadioButton(
                                //     context: context,
                                //     title: "Checkbox 1",
                                //     value: 1,
                                //     onChanged: (newValue) =>
                                //         Provider.of<AllProvider>(context,
                                //                 listen: false)
                                //             .changeRadio(newValue)),
                                // _myRadioButton(
                                //     context: context,
                                //     title: "Checkbox 3",
                                //     value: 2,
                                //     onChanged: (newValue) =>
                                //         Provider.of<AllProvider>(context,
                                //                 listen: false)
                                //             .changeRadio(newValue)),
                              ],
                            )
                            // },
                            // )
                          ],
                        ),
                      ),
                      //item task
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Item (Task)",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff200A4D),
                              )),
                          Text("Relevant Information",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff200A4D),
                              ))
                        ],
                      ),
                      //item task fileds text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 162,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff200A4D),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 162,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff200A4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // who and notes
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Who",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff200A4D),
                                )),
                            Text("Notes",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff200A4D),
                                ))
                          ],
                        ),
                      ),
                      //item task fileds text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 162,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff200A4D),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 162,
                            child: TextField(
                              style: TextStyle(
                                color: Color(0xff200A4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //reminder text
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Reminder",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff200A4D),
                                )),
                          ],
                        ),
                      ),
                      // radio btn
                      Text("radio button"),
                      //remnder setting text
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Reminder Setting",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff200A4D),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      //Remider setings
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              children: const [
                                Text("Task Date",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 168.0),
                                  child: Text("Task Time",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff200A4D),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Icon ionic-md-calendar.png")))),
                                ),
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Icon ionic-md-time.png")))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // 2
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Row(
                              children: const [
                                Text("Task Duration (Hrs.)",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 68.0),
                                  child: Text("Task Duration (Min)",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff200A4D),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Icon ionic-md-calendar.png")))),
                                ),
                                SizedBox(
                                  width: 164,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Icon ionic-md-time.png")))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //3
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, bottom: 20),
                            child: Row(
                              children: const [
                                Text("Task Frequency",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 120.0),
                                  child: Text("Reminder Type",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff200A4D),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Component 28 – 1.png")))),
                                ),
                                SizedBox(
                                  width: 144,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Component 28 – 1.png")))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //days hours mins
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Days",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    )),
                                Text("Hours",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    )),
                                Text("Mins    ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(
                                  width: 48.66,
                                  child: TextField(
                                    style: TextStyle(color: Color(0xff200A4D)),
                                  ),
                                ),
                                SizedBox(
                                  width: 48.66,
                                  child: TextField(
                                    style: TextStyle(color: Color(0xff200A4D)),
                                  ),
                                ),
                                SizedBox(
                                  width: 48.66,
                                  child: TextField(
                                    style: TextStyle(color: Color(0xff200A4D)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // task type
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Task Type",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff200A4D),
                                )),
                          ],
                        ),
                      ),
                      // radio buttn
                      Text("Radio buttton"),
                      // task status and gindie status
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18, bottom: 20),
                            child: Row(
                              children: const [
                                Text("Task Status",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff200A4D),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 150.0),
                                  child: Text("Hide Status",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff200A4D),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Component 28 – 1.png")))),
                                ),
                                SizedBox(
                                  width: 144,
                                  child: TextField(
                                      style: TextStyle(
                                        color: Color(0xff200A4D),
                                      ),
                                      decoration: InputDecoration(
                                          suffixIcon: ImageIcon(AssetImage(
                                              "assets/images/addTask/Component 28 – 1.png")))),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Save task
                      Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 18.0),
                        child: Container(
                          height: 62,
                          width: 311,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff52295D),
                                  Color(0xff2F1536),
                                ],
                              )),
                          child: const Center(
                              child: Text(
                            "Save Task",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
