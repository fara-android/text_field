import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: LoginForm()),
    );
  }
}

class LoginForm extends StatelessWidget {
  TextEditingController myController = TextEditingController();
  String getText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Log in'),
      ),
      body: Container(
        color: Colors.grey[350],
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 100,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  color: Colors.grey[350],
                  child: RichText(
                      text: TextSpan(
                          text: "Don't have an account?  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: "Sign up",
                            style: TextStyle(color: Colors.blue))
                      ])),
                ),
                Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      height: 450,
                      // width: 1100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(22),
                            bottomLeft: Radius.circular(22)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16),
                          buildText(0, "Email"),
                          SizedBox(height: 16),
                          Container(
                            height: 56,
                            child: TextField(
                              
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          ),
                          SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildText(0, "Password"),
                              Container(
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Container(
                            height: 56,
                            child: TextField(
                              
                              // onChanged: (e){
                              //   print(e);
                              // },
                              onSubmitted: (e){
                                getText = e;
                              },
                              obscureText: true,
                              
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey))),
                            ),
                          ),
                          SizedBox(height: 48),
                          Container(
                            height: 64,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget buildText(double paddingTop, String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
