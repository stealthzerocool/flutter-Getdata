
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetdata/views/data.dart';

void main(){
  runApp(GetData());
}


class GetData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Data(),
      ),
    );
  }
}
