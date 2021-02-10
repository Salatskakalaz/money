import 'package:flutter/material.dart';
import 'package:money/Style.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget  {

  Function onPressBack;
  String centerHeader = "Баланс";
  int balance = 2500;
  String currency = "₽";
  String  rightHeaderText = "Поддержка";


  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize {
    return Size.fromHeight(200.0);
  }

  MyAppBar({
    this.centerHeader = "Баланс",
    this.balance = 2500,
    this.currency = "₽",
    this.rightHeaderText = "Поддержка",
    this.onPressBack
  });
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cWhite,
      child: Container(

        decoration: BoxDecoration(
          color: cBlue,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft:  Radius.circular(30)),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBar(
              centerTitle: true,
              backgroundColor: cBlue,
              elevation: 0,
              title: Text(widget.centerHeader, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700,),),
              leading: GestureDetector(
                  onTap: (){if(widget.onPressBack != null)widget.onPressBack();},
                  child: Icon(Icons.arrow_back_ios_outlined, color: Colors.white, size: 18,)),
              actions: <Widget>[
                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:18.0),
                      child: Text(widget.rightHeaderText, style: TextStyle(color: Colors.white.withOpacity(0.25), fontSize: 13, fontWeight: FontWeight.w700,), ),
                    ),
                  ],
                )
              ],

            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.balance.toString()+" "+widget.currency, style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w800,),),
              ],
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}



