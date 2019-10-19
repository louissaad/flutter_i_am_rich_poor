//Please note this project can't be sold or published unless you have rights to do so (ask me on louissaadx@gmail.com)
//All rights go to Louis Saad.


import 'package:flutter/material.dart';

dynamic textfield, color1, color2,image;
//change the dynamic theme value to 'Poor' instead of 'Rich' then realod the app and see the changes
dynamic theme = 'Rich';
//This will showcase how one variable only can change the whole app theme and concept
void main() {
  if (theme == 'Rich') {
    textfield = "I AM RICH";
    color1 = Colors.blueGrey[900];
    color2 = Colors.blueGrey[700];
    image = AssetImage("assets/diamond.png");
  } else {
    if (theme == 'Poor') {
      textfield = "I AM POOR";
      color1 = Colors.lime[900];
      color2 = Colors.lime[700];
      image = AssetImage("assets/coal.png");
    } else {
      theme = 'Rich';
      main();
    }
  }
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(textfield)),
          backgroundColor: color1,
        ),
        body: Center(
          child: Image(
            image: image,
          ),
        ),
        backgroundColor: color2,
      ),
    ),
  );
}
