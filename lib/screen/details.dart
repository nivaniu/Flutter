import 'package:flutter/material.dart';
import 'package:flutter_getting_started/ressources/const_global.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const titleDetails = 'En savoir plus';
    return Scaffold(
      backgroundColor: Color(bgColorApp),
      appBar: AppBar(
        title: Text(titleDetails),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/images/image.jpg'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    descriptionDetails,
                    textAlign: TextAlign.center,
                    style: descriptionStyleDetails,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  emailText
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
