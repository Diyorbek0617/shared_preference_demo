import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preference_demo/model/user_model.dart';
import 'package:shared_preference_demo/pages/sign_up.dart';
import 'package:shared_preference_demo/services/pref_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Log_in extends StatefulWidget {
  static final String id = "log_in";

  @override
  _Log_inState createState() => _Log_inState();
}


class _Log_inState extends State<Log_in> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user = new User.from(email: email, password: password, id: "");
    Prefs.storeUser(user);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              //footer
              Container(
                height: 160,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/log_in.png", // image ning background qismini width i  height dan kattligi tufayli foreground image qismi centerda emas.
                  fit: BoxFit.fitHeight,
                ),
              ),
              //title
              Text(
                "Welcome back!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Log in to your existant accoount of Q Allure",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white54,
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                //gmail textfield
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Nizomiddinov.d.d@gmail.com",
                    hintStyle: TextStyle(color: Colors.blue),
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.blue.shade100,
                    width: 1.0,
                  ),
                ),
                //password textfield
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock_open_rounded,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("Forgot Password?",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600),),
              ),
              SizedBox(
                height: 20,
              ),
              // login button
              Container(
                width: double.infinity,
                height: 60,
                margin: EdgeInsets.only(left: 60.0, right: 60.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.indigo.shade800),
                child: FlatButton(
                  onPressed: (){
                    _doLogin();
                    },
                  child: Text(
                    "LOG IN",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Or connect using",
                style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 80.0,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                child: Row(
                  children: [
                    //login facebook
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.indigo.shade400
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex:1,
                              child: Container(
                                child: Center(
                                  child: Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ),
                            ),
                             Expanded(
                               flex: 2,
                               child:
                               Container(
                                 child: Text("Facebook",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                               ),
                             ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    // login google
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red.shade300,
                        ),
                        child: Row(

                          children: [
                          Expanded(
                          flex:1,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            child: Center(
                              child: Image.asset("assets/images/google_1.png"),
                            ),
                          ),
                        ),
                        //SizedBox(width: 3,),
                        Expanded(
                          flex: 2,
                          child:
                          Container(
                            child: Text("Google",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                          ),

                      ]
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            // footer
              SizedBox(
                height: 30.0,
              ),
              // footer
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("Don't have an acoount ?",style: TextStyle(fontSize: 14,color: Colors.grey.shade600,fontWeight: FontWeight.bold),)),
                    Center(child: SizedBox(width: 8,)),
                    Center(
                        child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, Sign_up.id);
                        },
                            //navigator sign up
                        child: Text("Sign up",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.w700),))),
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
