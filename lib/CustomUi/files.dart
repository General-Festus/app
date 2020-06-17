import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilesPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FaIcon(
                FontAwesomeIcons.filePdf,
                color: Colors.black38,
                size: 35,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        text: 'Brandedbook.',
                        children: [
                          TextSpan(
                            text: 'PDF',
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                  ),
                  Text('Dropbox/pdf/Ei/book....', style: TextStyle(
                      color: Colors.black26,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),),
                    
                ],
              ),
              Spacer()
            ],
          ),
        ),
        width: width,
        height: height * 0.1,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.05), borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
