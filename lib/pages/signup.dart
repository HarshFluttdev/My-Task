import 'package:flutter/material.dart';
import 'package:my_task/pages/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                      'assets/images/signup/Achievement _Monochromatic.png'),
                  Expanded(
                      child:
                          Image.asset('assets/images/signup/Group 1320.png')),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32.0),
                        topLeft: Radius.circular(32.0)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 67, left: 33, right: 32, bottom: 102),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff200A4D),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            SizedBox(
                              width: 128,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "First Name",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff200A4D),
                                    ),
                                  ),
                                  TextField(
                                    style: TextStyle(
                                      color: Color.fromRGBO(32, 10, 77, 1),
                                    ),
                                    decoration: InputDecoration(
                                      suffixIconColor: Color(0xff629677),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            SizedBox(
                              width: 128,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Last Name",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff200A4D),
                                    ),
                                  ),
                                  TextField(
                                    style: TextStyle(
                                      color: Color.fromRGBO(32, 10, 77, 1),
                                    ),
                                    decoration: InputDecoration(
                                      suffixIconColor: Color(0xff629677),
                                      fillColor: Color.fromRGBO(32, 10, 77, 1),
                                      // filled: true,
                                      // hintText: 'Enter Your Email Here',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Organization Name",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff200A4D),
                          ),
                        ),
                        const TextField(
                          style: TextStyle(
                            color: Color.fromRGBO(32, 10, 77, 1),
                          ),
                          decoration: InputDecoration(
                              suffixIcon: ImageIcon(
                            AssetImage("assets/images/login/Symbol.png"),
                            color: Color(0xff629677),
                          )),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff200A4D),
                          ),
                        ),
                        const TextField(
                          style: TextStyle(
                            color: Color.fromRGBO(32, 10, 77, 1),
                          ),
                          decoration: InputDecoration(
                              suffixIconColor: Color(0xff629677),
                              // hintText: 'Enter Your Firs Here',
                              suffixIcon: ImageIcon(
                                AssetImage("assets/images/login/Symbol.png"),
                                color: Color(0xff629677),
                              )),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff200A4D),
                          ),
                        ),
                        const TextField(
                          style: TextStyle(
                            color: Color.fromRGBO(32, 10, 77, 1),
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              suffixIconColor: Color(0xff629677),
                              suffixIcon: ImageIcon(
                                AssetImage("assets/images/login/Symbol.png"),
                                color: Color(0xff629677),
                              )),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: const [
                            Text(
                              "Password",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff200a4d),
                              ),
                            ),
                            Text(
                              "Password (8-20 characters)",
                              style: TextStyle(
                                fontSize: 7,
                                color: Color.fromRGBO(32, 10, 77, 0.45),
                              ),
                            ),
                          ],
                        ),
                        const TextField(
                          style: TextStyle(
                            color: Color.fromRGBO(32, 10, 77, 1),
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          "Comfirm Password",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff200A4D),
                          ),
                        ),
                        const TextField(
                          style: TextStyle(
                            color: Color.fromRGBO(32, 10, 77, 1),
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 62,
                          width: MediaQuery.of(context).size.width * 1,
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
                            "GET STARTED",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35, right: 30, top: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Have an account? ",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff200A4D)),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Login())),
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff4718AD),
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
