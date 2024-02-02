import 'package:flutter/material.dart';
import 'package:login_page_yt/user_view/rounded_button.dart';
import 'package:login_page_yt/user_view/signing_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool istrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red.withAlpha(0xffBBBB),
              Colors.red.withAlpha(0xff5858),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 50,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Welcome\n',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Good to see You',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter E-mail",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    obscureText: istrue,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              istrue = !istrue;
                            });
                          },
                          icon: Icon(
                              istrue ? Icons.visibility_off : Icons.visibility,
                              color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                          )),
                    ),
                  ),
                  Button(
                    title: 'Login',
                    ontap: () {},
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Don't have any Account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SigningScreen()));
                          },
                          child: const Text(
                            'Sign Up',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
