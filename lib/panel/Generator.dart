import 'package:flutter/material.dart';
import 'package:money/Models/ModelItemPanel.dart';
import 'package:money/Style.dart';

Widget generatorItemsPanel(List<ItemPanel> list){
  return Row(
    children: List.generate(list.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(left:20.0),
        child: Column(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(27)),
                  boxShadow: [
                    BoxShadow(offset: Offset(0,0), color: Color.fromRGBO(0, 0, 0, 0.05), blurRadius: 20),
                  ]
              ),
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(list[index].url),
                    ),
                  ),
                  list[index].online?Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: cWhite,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: cBlue,
                          ),
                        ),
                      ),
                    ),
                  ):SizedBox(),
                ],
              ),

            ),
            Text(list[index].name, textAlign: TextAlign.center, style: TextStyle(color: cMainText, fontWeight: FontWeight.w600, fontSize: 11, fontFamily: mainFont),)

          ],
        ),
      );
    }),
  );
}