
part of 'Panel.dart';
Widget _buttons(){
  return Row(
    children: [
      Column(
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

            child:  Center(
              child: Container(
                color: Colors.transparent,
                height: 25,
                width: 25,
                child: SvgPicture.asset(
                  "assets/icons/plus.svg",
                  height: 25,
                  width: 25,
                  semanticsLabel: 'Acme Logo',
                  color: cBlue,
                ),
              ),
            ),
          ),
          Text("Пополнить", textAlign: TextAlign.center, style: TextStyle(color: cMainText, fontWeight: FontWeight.w600, fontSize: 11, fontFamily: mainFont),)
        ],
      ),
      SizedBox(width: 20,),
      Column(
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

            child:  Center(
              child: Container(
                color: Colors.transparent,
                height: 25,
                width: 25,
                child: SvgPicture.asset(
                  "assets/icons/mess.svg",
                  height: 25,
                  width: 25,
                  semanticsLabel: 'Acme Logo',
                  color: cBlue,
                ),
              ),
            ),
          ),
          Text("Отправить", textAlign: TextAlign.center, style: TextStyle(color: cMainText, fontWeight: FontWeight.w600, fontSize: 11, fontFamily: mainFont),)

        ],
      ),
      SizedBox(width: 20,),

      Column(
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

            child:  Center(
              child: Container(
                color: Colors.transparent,
                height: 25,
                width: 25,
                child: SvgPicture.asset(
                  "assets/icons/wallet.svg",
                  height: 25,
                  width: 25,
                  semanticsLabel: 'Acme Logo',
                  color: cBlue,
                ),
              ),
            ),
          ),
          Text("Перевести", textAlign: TextAlign.center, style: TextStyle(color: cMainText, fontWeight: FontWeight.w600, fontSize: 11, fontFamily: mainFont),)

        ],
      ),
    ],
  );
}