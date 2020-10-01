import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getting_started/ressources/const_global.dart';
import 'package:flutter_getting_started/screen/details.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(bgColorApp),
      appBar: AppBar(
        title: Text(titleVisitCard),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/images/image.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    lastNameVisitCard,
                    style: lastNameStyleVisitCard,
                  ),
                ),
              ),
              Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(top: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    descriptionVisitCard,
                    textAlign: TextAlign.center,
                    style: descriptionTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                },
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: buttonsGradientColors,
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    buttonTextVisitCard,
                    style: buttonTextStyleVisitCard,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
