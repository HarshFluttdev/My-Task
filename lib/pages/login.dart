import 'package:flutter/material.dart';
import 'package:my_task/pages/dashboard.dart';
import 'package:my_task/pages/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/login/Group 1318.png'),
                  Expanded(
                    child: Image.asset(
                        'assets/images/login/World wide web_Monochromatic.png'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 1,
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
                            "Log In",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff200A4D),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                              suffixIcon: ImageIcon(
                                AssetImage("assets/images/login/Symbol.png"),
                                color: Color(0xff629677),
                              )),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff200A4D),
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          style: TextStyle(
                            color: Color.fromRGBO(32, 10, 77, 1),
                          ),
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xffA39AB6),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard())),
                          child: Container(
                            height: 62,
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
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
                              "PROCEED",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 17, top: 40),
                          child: Row(
                            children: [
                              const Text(
                                "Don't have an account yet? ",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff200A4D)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const SignUp()));
                                },
                                child: const Text(
                                  "Sign up here",
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
