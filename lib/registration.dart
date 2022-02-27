import 'dart:async';
import 'package:akam/column.dart';
import 'package:akam/main.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController txtname = new TextEditingController();
  TextEditingController txt4name = new TextEditingController();
  TextEditingController txt1name = new TextEditingController();
  TextEditingController txt2name = new TextEditingController();
  TextEditingController txt3name = new TextEditingController();

  List<String> arrCategory = [];
  late String selectedCategory = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/culture_logo.png',
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 2.5,
                  ),
                  Spacer(),
                  Container(
                    child: Image.asset(
                      'assets/menu.png',
                      // height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Image.asset(
                      'assets/logo2.png',
                      // height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Image.asset(
                      'assets/Modi_1.png',
                      // height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width / 7,
                    ),
                  ),
                  Image.asset(
                    'assets/Bhupendra_Patel.png',
                    // height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 7.8,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'REGISTER NOW',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Home ',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
                Text(
                  '/ Register Now',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name of the person*'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 7, right: 0),
                                //color: Colors.red,
                                //height: 50,
                                width: MediaQuery.of(context).size.width - 110,
                                child: TextFormField(
                                  controller: txtname,
                                  keyboardType: TextInputType.name,
                                  /*inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                                    ],*/
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Name of the person",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                )),
                          ],
                        )),
                    Text('Name of organisation / Institution**'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 7, right: 0),
                                //color: Colors.red,
                                //height: 50,
                                width: MediaQuery.of(context).size.width - 110,
                                child: TextFormField(
                                  controller: txt1name,
                                  keyboardType: TextInputType.name,
                                  /*inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                                    ],*/
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Name of the person",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                )),
                          ],
                        )),
                    Text('Designation*'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10, top: 0, right: 10, bottom: 0),
                          //width: 100,
                          child: DropdownButton<String>(
                            hint: Text(
                              '--Select Participation Category--',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SR',
                                  fontSize: 15),
                            ),
                            isExpanded: true,
                            icon: Image.asset(
                              'assets/dropdown.png',
                              height: 25,
                            ),
                            underline: SizedBox(),
                            onTap: () {},
                            onChanged: (newValue) {
                              // FocusScope.of(context).unfocus();
                              setState(() {
                                selectedCategory = newValue!;
                              });
                            },
                            items: arrCategory.map((location) {
                              return DropdownMenuItem(
                                child: new Text(
                                  location,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                ),
                                value: location,
                              );
                            }).toList(),
                          ),
                        )),
                    Text('Mobile No*'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 7, right: 0),
                                //color: Colors.red,
                                //height: 50,
                                width: MediaQuery.of(context).size.width - 110,
                                child: TextFormField(
                                  controller: txt2name,
                                  keyboardType: TextInputType.number,
                                  /*inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                                    ],*/
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Mobile No*",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                )),
                          ],
                        )),
                    Text('Email Id*'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 7, right: 0),
                                //color: Colors.red,
                                //height: 50,
                                width: MediaQuery.of(context).size.width - 110,
                                child: TextFormField(
                                  controller: txt3name,
                                  keyboardType: TextInputType.name,
                                  /*inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                                    ],*/
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Email Id*",
                                      hintStyle: TextStyle(color: Colors.grey)),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                )),
                          ],
                        )),
                    Text('Nationality*'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10, top: 0, right: 10, bottom: 0),
                          //width: 100,
                          child: DropdownButton<String>(
                            hint: Text(
                              'Select Nationality',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SR',
                                  fontSize: 15),
                            ),
                            isExpanded: true,
                            icon: Image.asset(
                              'assets/dropdown.png',
                              height: 25,
                            ),
                            underline: SizedBox(),
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            onChanged: (newValue) {
                              // FocusScope.of(context).unfocus();
                              setState(() {
                                selectedCategory = newValue!;
                              });
                            },
                            items: arrCategory.map((location) {
                              return DropdownMenuItem(
                                child: new Text(
                                  location,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                ),
                                value: location,
                              );
                            }).toList(),
                          ),
                        )),
                    Text('Why you want to attend this session? *'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 7, right: 0),
                                width: MediaQuery.of(context).size.width - 110,
                                child: TextFormField(
                                  decoration:
                                      InputDecoration.collapsed(hintText: ''),
                                  controller: txt4name,
                                  keyboardType: TextInputType.name,
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                )),
                          ],
                        )),
                    Text('How do you Come to know about this conference?*'),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 10, left: 0, right: 0),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10, top: 0, right: 10, bottom: 0),
                          //width: 100,
                          child: DropdownButton<String>(
                            hint: Text(
                              'Select One',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SR',
                                  fontSize: 15),
                            ),
                            isExpanded: true,
                            icon: Image.asset(
                              'assets/dropdown.png',
                              height: 25,
                            ),
                            underline: SizedBox(),
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            onChanged: (newValue) {
                              // FocusScope.of(context).unfocus();
                              setState(() {
                                selectedCategory = newValue!;
                              });
                            },
                            items: arrCategory.map((location) {
                              return DropdownMenuItem(
                                child: new Text(
                                  location,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SR',
                                      fontSize: 15),
                                ),
                                value: location,
                              );
                            }).toList(),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Container(
                    margin:
                        EdgeInsets.only(top: 30, bottom: 0, left: 10, right: 0),
                    height: 50,
                    width: 155,
                    decoration: new BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(13),
                      gradient: new LinearGradient(
                          colors: [
                            Colors.brown,
                            Colors.red,
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
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SB',
                              fontSize: 18),
                        ),
                      ],
                    )),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
