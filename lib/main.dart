import 'dart:async';
import 'package:akam/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '75 Azadi Ka Amrit Mahotsav',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image.png"), fit: BoxFit.fill)),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username, password;
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();

  Widget _buildUsernameRow() {
    return Container(
        margin: EdgeInsets.only(top: 50, bottom: 15, left: 30, right: 30),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 5),
              height: 20,
              // width: 20,
              child: Image.asset(
                'assets/login_user.png',
                height: 15,
                width: 15,
                fit: BoxFit.contain,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 0),
                //color: Colors.red,
                //height: 50,
                width: MediaQuery.of(context).size.width - 160,
                child: TextFormField(
                  controller: txtUsername,
                  keyboardType: TextInputType.emailAddress,
                  /*inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                                    ],*/
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration.collapsed(
                    hintText: "Username",
                  ),
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'SR', fontSize: 15),
                )),
          ],
        ));
  }

  Widget _buildPasswordRow() {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 0, left: 30, right: 30),
        //height: 50,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(10),
          /*border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                                width: 1.5,
                              ),*/
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin:
                    EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 5),
                height: 20,
                // width: 20,
                child: Image.asset(
                  'assets/login_password.png',
                  height: 17,
                  width: 17,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 0),
                //color: Colors.red,
                height: 50,
                width: MediaQuery.of(context).size.width - 160,
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    controller: txtPassword,
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration.collapsed(
                      hintText: "Password",
                    ),
                    style: TextStyle(
                        color: Colors.black, fontFamily: 'SR', fontSize: 15),
                  ),
                ),
              ),
            ]));
  }

  Widget _buildLoginButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      GestureDetector(
        onTap: () {},
        child: Container(
            margin: EdgeInsets.only(top: 30, bottom: 0, left: 0, right: 0),
            height: 40.0,
            width: 155,
            decoration: new BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(20.0),
              gradient: new LinearGradient(
                  colors: [
                    Colors.brown,
                    Colors.blue,
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'SB', fontSize: 18),
                ),
              ],
            )),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Builder(builder: (context) {
        return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: Image.asset(
                        'assets/bg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 0, right: 0, top: 255, bottom: 0),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(60),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120, bottom: 0),
                          width: MediaQuery.of(context).size.width - 200,
                          child: IconButton(
                              icon: Image.asset(
                                'assets/people.png',
                                fit: BoxFit.fill,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationPage()));
                              }),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                left: 0, right: 0, top: 170, bottom: 0),
                            //width: MediaQuery.of(context).size.width,
                            child: RichText(
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                  text: 'Participant Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SSB',
                                      fontSize: 18),
                                  children: []),
                            )),
                      ],
                    )
                  ],
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
                  //color: Colors.red,
                  height: MediaQuery.of(context).size.height - 120,
                  width: MediaQuery.of(context).size.width - 20,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        _buildUsernameRow(),
                        _buildPasswordRow(),
                        SizedBox(
                          height: 55,
                        ),
                        _buildLoginButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ));
      }),
    );
  }
}
