import 'package:flutter/material.dart';

class AddTaskConatainer extends StatelessWidget {
  const AddTaskConatainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 172,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(26)),
          gradient:
              LinearGradient(colors: [Color(0xff52295D), Color(0xff5A3364)])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/members/Path 11304@3x.png'),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "AddTask",
            style: TextStyle(fontSize: 18, color: Color(0xffffffff)),
          )
        ],
      ),
    );
  }
}
