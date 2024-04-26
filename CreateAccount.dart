import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
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
                    left: 140.0,
                    top: 620.0,
                    width: 275.0,
                    height: 43.0,
                    child: NavButtonsWidget(),
                  ),

                  Positioned(
                    left: 50.0,
                    top: 430.0,
                    width: 300.0,
                    height: 95.0,
                    child: Button2(),
                  ),
                  Positioned(
                    left: 50.0,
                    top: 320.0,
                    width: 300.0,
                    height: 95.0,
                    child: Button1(),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 120.0,
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

///***************** Button For Customer *********************
class Button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/CustomerAcc'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: Text(
          '''Customer Account''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.2102272396995908,
            fontSize: 20.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.white,

            /* letterSpacing: 0.0, */
          ),
        ),
      ),);
  }
}

///************* Button For Service Provider *******************
class Button2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/ServiceProviderAcc'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: Text(
          '''Service Provider Account''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.2102272396995908,
            fontSize: 20.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.white,

            /* letterSpacing: 0.0, */
          ),
        ),
      ),);
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
                      '''Create Account''',
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

///********** Back ***************/
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/Login'),
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
      ),);
  }
}
