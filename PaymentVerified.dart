import 'package:flutter/material.dart';

class PaymentVerified extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Container(
            width: 360.0,
            height: 800.0,
            child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.zero,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    left: 50.0,
                    top: 150.0,
                    width: 300.0,
                    height: 450.0,
                    child: BlueBox(),
                  ),
                  Positioned(
                    left: 55.0,
                    top: 650.0,
                    width: 400.0,
                    height: 309.0,
                    child: NavButtonsWidget(),
                  ),
                ]),
          ),
        ));
  }
}
///**************** NavButtonsWidget **********/
class NavButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275.0,
      height: 43.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 20.0,
              top: 0.0,
              width: 250.0,
              height: 50.0,
              child: Back(),
            )
          ]),
    );
  }
}

///********** FBlue Box Widget **********/

class BlueBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 309.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF68FF77),
      ),
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
                left: 10.0,
                top: 50.0,
                child:  BoldText(text: 'CONGRATULATIONS',)
            ),
            Positioned(
              left: 55.0,
              top: 100.0,
              width: 200.0,
              height: 140.0,
              child: Image.asset("assets/images/verified.png"),
            ),
            Positioned(
                left: 50.0,
                top: 260.0,
                child:  BoldText(text: 'Your Payment',)
            ),
            Positioned(
                left: 15.0,
                top: 290.0,
                child:  BoldText(text: 'Have Been Verified',)
            ),
          ]),
    );
  }
}


///********** Back ***************/
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/MainPage'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: Text(
          '''Return To Home Page''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.2102272396995908,
            fontSize: 21.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            color: Colors.white,

            /* letterSpacing: 0.0, */
          ),
        ),
      ),
    );
  }
}


class BoldText extends StatelessWidget {
  final String text;
  const BoldText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        height: 1.2,
        fontSize: 28.0,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w800,
        color: Colors.white,
        // letterSpacing: 0.0,
      ),
    );
  }
}
