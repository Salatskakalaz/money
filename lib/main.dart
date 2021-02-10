import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money/CustomAppBar.dart';
import 'package:money/Models/ModelItemPanel.dart';
import 'package:money/Style.dart';
import 'package:money/panel/Generator.dart';
import 'package:money/panel/Panel.dart';

import 'Models/ModelTx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Material(child: Scaffold(
      appBar: MyAppBar(onPressBack: (){},),
      body: Content(),
    ),);
  }



}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: cWhite,
      child: SingleChildScrollView(
        child:
        Column(
          children: [
            SizedBox(height: 12,),
            MainPanel(list: []),
            SizedBox(height: 12,),
            txList(txList1, context),
          ],
        ),
      ),
    );
  }
}


Widget txList(List<Tx> list, BuildContext context){
  return Column(
    children: List.generate(list.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(27)),
              boxShadow: [
                BoxShadow(offset: Offset(0,0), color: Color.fromRGBO(0, 0, 0, 0.05), blurRadius: 20),
              ]
          ),
          width: MediaQuery.of(context).size.width - 24,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(list[index].date, style: TextStyle(color: cMainTextWithOpacity, fontFamily: mainFont, fontSize: 13, fontWeight: FontWeight.w500),  ),
                    SizedBox(height: 10,),
                    Text(list[index].sum, style: TextStyle(color: (index%2==0)?cMainText:cBlue, fontFamily: mainFont, fontSize: 20, fontWeight: FontWeight.w700),  ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Text(list[index].type, style: TextStyle(color: cMainTextWithOpacity, fontFamily: mainFont, fontSize: 13, fontWeight: FontWeight.w500),  ),
                    SizedBox(height: 10,),

                    Text(list[index].name, style: TextStyle(color: cMainText, fontFamily: mainFont, fontSize: 20, fontWeight: FontWeight.w600),  ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }),
  );
}




