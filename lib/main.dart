import 'package:flutter/material.dart';

import 'package:flutter_getting_started/screen/VisitCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'La carte de Visite',
      home: VisitCard(),
    );
  }
}