import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  var height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;

    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Stack(
            children: <Widget>[
              Container(
                width: width * 0.6,
                height: height * 0.36,
                child: Material(
                  elevation: 7,
                  color: Color.fromRGBO(15, 27, 255, 1),
                  borderRadius: BorderRadius.circular(13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //sizing Box
                      Container(
                        width: width * 0.6,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      getFile(FontAwesomeIcons.folder),
                                      getFile(FontAwesomeIcons.clone),
                                      getFile(FontAwesomeIcons.database)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: width,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Dropbox',
                                          style: TextStyle(
                                              fontSize: 21,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '60Gb',
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            Spacer(),
                                            Text(
                                              '1000Gb',
                                              style:
                                                  TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 10,
                                width: width,
                                child: Center(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 10,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(15, 27, 255, 1),
                    borderRadius: BorderRadius.circular(13)),
              ),
              Transform.translate(
                offset: Offset(height * 0.02, -15),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(100),
                  child: FloatingActionButton(
                      elevation: 10,
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.dropbox,
                          color: Color.fromRGBO(15, 27, 255, 1),
                          size: 30,
                        ),
                      ),
                      backgroundColor: Colors.white,
                      onPressed: () {}),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  getFile(IconData font) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.06,
        width: height * 0.06,
        child: Center(
          child: FaIcon(
            font,
            color: Colors.white.withOpacity(0.5),
            size: 20,
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
