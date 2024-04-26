import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children:[
        Stack(
        children: [
          Positioned(
            top: 60,
            width: 400.0,
            height: 60.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Container(
                  color: Color.fromARGB(255, 68, 61, 59),
                  child: Text(
                    '''Trip Ninja''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.8,
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
        ],
        ),
      SizedBox.expand(
      child: Stack(
          children: [
            const Positioned(
              left: 10.0,
              top: 160.0,
              width: 370.0,
              height: 180.0,
              child: BigBox(),
            ),
            const Positioned(
                left: 10.0,
                top: 380.0,
                width: 110.0,
                height: 70.0,
                child: Box(
                  route: '/MainPage',
                  text: "Medium Of Travel",),
              ),
            const Positioned(
              left: 140.0,
              top: 380.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/TripPlanner',
                text: "Plan Your Trip",),
            ),
            const Positioned(
              left: 270.0,
              top: 380.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/CargoTransport',
                text: "Cargo Transportation",),
            ),
            const Positioned(
                left: 10.0,
                top: 465.0,
                width: 110.0,
                height: 70.0,
                child: Box(
                  route: '/MainPage',
                  text: "Local Guides",),
              ),
            const Positioned(
              left: 140.0,
              top: 465.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "Accomodation",),
            ),
            const Positioned(
              left: 270.0,
              top: 465.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "E-Commerce",),
            ),
            const Positioned(
                left: 10.0,
                top: 550.0,
                width: 110.0,
                height: 70.0,
                child: Box(
                  route: '/PaymentMethod',
                  text: "Payment Method",),
              ),
            const Positioned(
              left: 140.0,
              top: 550.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "Budget Tracking",),
            ),
            const Positioned(
              left: 270.0,
              top: 550.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "Packing Lists",),
            ),
            const Positioned(
                left: 10.0,
                top: 635.0,
                width: 110.0,
                height: 70.0,
                child: Box(
                  route: '/MainPage',
                  text: "Document Management",),
              ),
            const Positioned(
              left: 140.0,
              top: 635.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "Chat Bot",),
            ),
            const Positioned(
              left: 270.0,
              top: 635.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "Surprise Trip",),
            ),
            const Positioned(
                left: 10.0,
                top: 720.0,
                width: 110.0,
                height: 70.0,
                child: Box(
                  route: '/MainPage',
                  text: "Security",),
              ),
            const Positioned(
              left: 140.0,
              top: 720.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/Login',  //A button to go back just for demonstration purpose
                text: "FeedBack",),
            ),            
            const Positioned(
              left: 270.0,
              top: 720.0,
              width: 110.0,
              height: 70.0,
              child: Box(
                route: '/MainPage',
                text: "Review and Ratings",),
            ),
            Positioned(
              width: 40.0,
              height: 40.0,
              top: 70.0,
              left: 10,
              child:Image.asset("assets/images/1.png"),
              ),
            Positioned(
              width: 40.0,
              height: 40.0,
              top: 70.0,
              left: 340,
              child:Image.asset("assets/images/2.png"),
              ),
          ],
        ),
        ) 

      ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String text;
  final String route;
  const Box({Key? key, required this.text,required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        // width: 100,
        // height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.2,
            fontSize: 15.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            // letterSpacing: 0.0,
          ),
        ),
      ),
    );
  }
}

class BigBox extends StatelessWidget {
  const BigBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/mainPage'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xFF535353),
        ),
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(
              left: 31.0), // Set the desired left padding value
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Go Premium',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 2.3,
                  fontSize: 28.0,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                '50% Off',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.2,
                  fontSize: 23.0,
                  fontFamily: 'Inter',
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                'For Exclusive Deals',
                overflow: TextOverflow.visible,
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 3.5,
                  fontSize: 20.0,
                  fontFamily: 'Inter',
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
