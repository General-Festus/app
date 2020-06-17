import 'package:app/CustomUi/CustomAvatar.dart';
import 'package:app/CustomUi/card.dart';
import 'package:app/CustomUi/files.dart';
import 'package:app/CustomUi/images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var list = List.generate(4, (index) =>CustomAvater() );
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    var width = MediaQuery.of(context).size.width;
    return SafeArea(
          child: Scaffold(
        backgroundColor: Color.fromRGBO(245, 249, 255, 1),
        body: SingleChildScrollView(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBar(
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.black38,
                    ),
                  ),
                ],
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.alignLeft,
                    color: Colors.black38,
                  ),
                ),
                elevation: 0,
                backgroundColor:  Color.fromRGBO(245, 249, 255, 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black38,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Mr.Anthony Burke',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
                width: width,
              ),
              SizedBox(
                height: height * 0.43,
                width: width,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CustomCard(),
                    CustomCard(),
                    CustomCard(),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
                width: width,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Text(
                  'Co-ownwers',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500),
                ),
              ),
               SizedBox(
                height: 15,
                width: width,
              ),
              Container(
                // color: Colors.black38,
                child: SizedBox(
                  height: height*0.1,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ...uriImage.map((e) => CustomAvater(image: e,)).toList(),
                       
                       AvaterDotted()
                      ],
                  ),
                ),
              ),
               SizedBox(
                height: 10,
                width: width,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Text(
                  'Last files',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500),
                ),
              ),
               SizedBox(
                height: 15,
                width: width,
              ),
              FilesPart(),
               SizedBox(
                height: 40,
               
              ),
            ],
          ),
        ),
      ),
    );
  }
}
