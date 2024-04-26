import 'package:flutter/material.dart';

class EasyPaisa extends StatelessWidget {
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
                    top: 280.0,
                    width: 300.0,
                    height: 450.0,
                    child: BlueBox(),
                  ),
                  Positioned(
                    left: 50.0,
                    top: 220.0,
                    width: 400.0,
                    height: 309.0,
                    child: NavButtonsWidget(),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 100.0,
                    width: 400.0,
                    height: 100.0,
                    child: PageTitleWidget(),
                  )
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
              left: 0.0,
              top: 0.0,
              width: 119.0,
              height: 42.0,
              child: Back(),
            )
          ]),
    );
  }
}

///********** Blue Box Widget **********/

class BlueBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 309.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color(0xFF9F9DF5),
      ),
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 10.0,
                top: 20.0,
                child:  BoldText(text: 'Pay Through Your Mobile Wallet',)
              ),
              Positioned(
                  left: 10.0,
                  top: 70.0,
                  child:  BoldText(text: 'Mobile Wallet Name:',)
              ),
              Positioned(
                  left: 10.0,
                  top: 95.0,
                  child:  NormalText(text: 'EasyPaisa MicroFinance Bank',)
              ),
              Positioned(
                  left: 10.0,
                  top: 145.0,
                  child:  BoldText(text: 'Account Number:',)
              ),
              Positioned(
                  left: 10.0,
                  top: 170.0,
                  child:  NormalText(text: '03475873421',)
              ),
              Positioned(
                left: 45.0,
                top: 200.0,
                width: 200.0,
                height: 140.0,
                child: Image.asset("assets/images/easypaisa.png"),
              ),
              Positioned(
                left: 45.0,
                top: 350.0,
                width: 200.0,
                height: 60.0,
                child: Verify(),
              ),

            ]),
    );
  }
}

///********* PageTitleWidget ***********/

class PageTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 96.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Positioned(
              width: 360.0,
              height: 95.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Container(
                    color: Color(0xFF22B7A0),
                    child: Text(
                      '''Pay Via EasyPaisa''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.2,
                        fontSize: 30.0,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,

                        /* letterSpacing: 0.0, */
                      ),
                    )
                ),
              ),
            )
          ]),
    );
  }
}


///************* Verify ************/
class Verify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/PaymentVerified'),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Color(0xFFFF7474),
        ),
        alignment: Alignment.center,
        child: Text(
          '''Verify Payment''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.2102272396995908,
            fontSize: 21.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
            color: Colors.white,

            /* letterSpacing: 0.0, */
          ),
        ),
      ),
    );
  }
}


///********** Back ***************/
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/PaymentMethod'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: Text(
          '''Back''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.2102272396995908,
            fontSize: 21.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,

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
            fontSize: 18.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
            color: Colors.white,
            // letterSpacing: 0.0,
          ),
    );
  }
}
class NormalText extends StatelessWidget {
  final String text;
  const NormalText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        height: 1.2,
        fontSize: 18.0,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w100,
        color: Colors.white,
        // letterSpacing: 0.0,
      ),
    );
  }
}