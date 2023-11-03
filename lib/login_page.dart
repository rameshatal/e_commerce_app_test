import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
 var  formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&ga=GA1.2.27368061.1692419439&semt=ais"),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  "Welcome back",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text("Login in to continue using our app."),
                SizedBox(
                  height: 31,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: Column(
                          children: [
                            TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Email",
                                    prefixIcon: Icon(Icons.email_outlined),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(21)))),
                            SizedBox(height: 21,),
                            TextFormField(
                              obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(21)))),
                            Padding(
                              padding: const EdgeInsets.only(top: 11,left: 100),
                              child: Text("Forget Password?"),
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
