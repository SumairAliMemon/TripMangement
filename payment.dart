import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
            borderRadius: BorderRadius.zero,
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 360.0,
              height: 800.0,
                child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,

                    // overflow: Overflow.visible,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.zero,
                        child: Container(
                          // ignore: prefer_const_constructors
                          color: Color.fromARGB(255, 8, 1, 1),
                        ),
                      ),




                      Positioned(
                          left: 0.0,
                          top: 70.0,
                          width: 450.0,
                          height: 120.0,
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: 320.0,
                            height: 80.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.zero,
                              child: Container(
                                // ignore: prefer_const_constructors
                                color: Color.fromARGB(255, 68, 61, 59),
                              ),
                            ),
                          )),

                      const Positioned(
                        left: 50.0,
                        top: 90.0,
                        width: 300,
                        height: 100.0,
                        child: Text(
                          textAlign: TextAlign.center,
                          ' Choose a Payment Method ',
                          style: TextStyle(
                            fontSize: 33.0,
                            fontFamily: 'Inter',
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),

                      Positioned(
                          left: 30.0,
                          top: 300.0,
                          child: Bank()
                      ),

                      const Positioned(
                        left: 40.0,
                        top: 325.0,
                        width: 300,
                        height: 23.0,
                        child: Text(
                          ' Pay via Bank Transfer  ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontFamily: 'Inter',
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),

                      Positioned(
                          left: 30.0,
                          top: 400.0,
                          child: Easy()
                      ),

                      const Positioned(
                        left: 40.0,
                        top: 425.0,
                        width: 300,
                        height: 27.0,
                        child: Text(
                          ' Pay via Easy Paisa   ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontFamily: 'Inter',
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),

                      Positioned(
                          left: 30.0,
                          top: 500.0,
                          child: Jazz()
                      ),

                      const Positioned(
                        left: 40.0,
                        top: 525.0,
                        width: 300,
                        height: 23.0,
                        child: Text(
                          ' Pay via Jazz Cash  ',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontFamily: 'Inter',
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),


                      Positioned(
                        left: 280.0,
                        top: 295.0,
                        width:80.0,
                        height: 90.0,
                        child: Image.asset("assets/images/bank.png"),
                      ),

  Positioned(
                        left: 280.0,
                        top: 405.0,
                        width:70.0,
                        height: 70.0,
                        child: Image.asset("assets/images/easypaisa.png"),
                      ),
                        Positioned(
                        left: 270.0,
                        top: 485.0,
                        width:80.0,
                        height: 100.0,
                        child: Image.asset("assets/images/jazzcash.png"),
                      ),



                    ]),
            )));
  }
}

class Easy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/EasyPaisa'),
        child: Container(
          width: 330,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color(0xFF22B7A0),
          ),
          alignment: Alignment.center,
        ));
  }
}

class Jazz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/JazzCash'),

        child: Container(
          width: 330,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color(0xFF22B7A0),
          ),
          alignment: Alignment.center,
        ));
  }
}

class Bank extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/BankAccount'),

        child: Container(
          width: 330,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color(0xFF22B7A0),
          ),
          alignment: Alignment.center,
        ));
  }
}
