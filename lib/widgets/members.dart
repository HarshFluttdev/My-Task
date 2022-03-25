import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  const Members({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool memeberStatus = true;
    return Row(
      children: [
        Container(
          // padding: EdgeInsets.all(20),
          height: 85,
          width: memeberStatus ? 307 : 331,
          decoration: const BoxDecoration(color: Color(0xffffffff)),
          child: Row(
            children: [
              Image.asset('assets/images/members/Ellipse 288.png'),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Anshul Berry",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff181743),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          height: 19,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color(0xff75B959),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: const Center(
                            child: Text(
                              "Manager",
                              style: TextStyle(
                                  fontSize: 9, color: Color(0xffffffff)),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 19,
                              width: 44,
                              decoration: const BoxDecoration(
                                  color: Color(0xffBDA1D8),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      'assets/images/members/Edit-Square.png'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: 9, color: Color(0xffffffff)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 19,
                              width: 75,
                              decoration: const BoxDecoration(
                                  color: Color(0xffA571D7),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      'assets/images/members/Path 11304.png'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "Permissions",
                                    style: TextStyle(
                                        fontSize: 9, color: Color(0xffffffff)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              height: 19,
                              width: 53,
                              decoration: const BoxDecoration(
                                  color: Color(0xffFF0000),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      'assets/images/members/Iconly-Broken-Delete.png'),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "Delete",
                                    style: TextStyle(
                                        fontSize: 9, color: Color(0xffffffff)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        if (memeberStatus == true)
          Container(
            height: 85,
            width: 24,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6.0),
                  bottomRight: Radius.circular(6.0),
                ),
                color: Color(0xff75B959)),
            child: RotatedBox(
              quarterTurns: -1,
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: 'Active',
                    // style: DefaultTextStyle.of(context).style,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
