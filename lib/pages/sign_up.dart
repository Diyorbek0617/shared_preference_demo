import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preference_demo/model/account_model.dart';
import 'package:shared_preference_demo/pages/log_in.dart';
import 'package:shared_preference_demo/services/pref_service.dart';

class Sign_up extends StatefulWidget {
  // const Sign_up({Key? key}) : super(key: key);
  static final String id = "sign_up";

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirm_passwordController = TextEditingController();
 // sign up func
  void _doSigup() {
    String name = nameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String phone =phoneController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    String confirm_password = confirm_passwordController.text.toString().trim();
    Account account = new Account(id: '', email: email, phone: phone, password: password, confirm_password: confirm_password);//.from(email: email, password: password, id:"",password:password,phone:phone,confirm_password:confirm_password);
    Prefs.storeAccount(account);
    print(name);
    print(email);
    print(phone);
    print(password);
    print(confirm_password);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Log_in.id);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              // title
              Text(
                "Let`s Get Started!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Create an account to Q Allure to get all features",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              // name textfield
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: Colors.white,
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                ),
                child: Center(
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Diyorbek Nizomiddinov",
                      hintStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.account_box,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // email textfield
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // phone textfield
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Phone",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.phone_android_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // password textfield
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.lock_open_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // confirm password textfield
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextField(
                    controller: confirm_passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Confirm password",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      icon: Icon(
                        Icons.lock_open_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade600,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FlatButton(
                  onPressed: () {
                    _doSigup();
                  },
                  // create button
                  child: const Text(
                    "Create",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              // footer
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "Already have an acoount ?",
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade600),
                    )),
                    const Center(
                        child: SizedBox(
                      width: 8,
                    )),
                    Center(
                      // navigator log in page
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Log_in.id);
                        },
                        child: const Text(
                          "Login here",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
