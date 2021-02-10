import 'package:flutter/material.dart';
import 'package:money/Models/ModelItemPanel.dart';
import 'package:money/panel/Generator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money/Style.dart';
part 'Buttons.dart';



class MainPanel extends StatefulWidget {

  List<ItemPanel> list;
  MainPanel({this.list});


  @override
  _MainPanelState createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pink,
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 35,),
            _buttons(),
            generatorItemsPanel([
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', true),
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', false),
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', true),
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', true),
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', true),
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', true),
              ItemPanel("https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg", 'name', true),
            ])
          ],
        ),
      ),
    );
  }
}