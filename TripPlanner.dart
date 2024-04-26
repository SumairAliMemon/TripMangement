import 'package:flutter/material.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
class TripPlanner extends StatelessWidget {
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
                    left: 60.0,
                    top: 647.0,
                    width: 275.0,
                    height: 43.0,
                    child: NavButtonsWidget(),
                  ),
                  Positioned(
                    left: 50.0,
                    top: 289.0,
                    width: 301.0,
                    height: 320.0,
                    child: FormWidget(formKey: _formKey),
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
              left: 156.0,
              top: 1.0,
              width: 119.0,
              height: 42.0,
              child: Next(formKey: _formKey),
            ),
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

///********** FormWidget **********/

class FormWidget extends StatelessWidget {

  final GlobalKey<FormState> formKey;

  const FormWidget({required this.formKey});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 301.0,
        height: 309.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Form(
          key: formKey,
          child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0.0,
                  top: 240.0,
                  width: 300.0,
                  height: 80.0,
                  child:  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Time',
                      hintStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(16),
                      fillColor: Color(0xFF22B7A0),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This Field is required';
                      }
                      return null;
                    },
                  ),
                ),
                Positioned(
                  left: 0.0,
                  top: 160.0,
                  width: 300.0,
                  height: 80.0,
                  child:  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Date',
                      hintStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(16),
                      fillColor: Color(0xFF22B7A0),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This Field is required';
                      }
                      return null;
                    },
                  ),
                ),
                Positioned(
                  left: 0.0,
                  top: 80.0,
                  width: 300.0,
                  height: 80.0,
                  child:  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Number Of People',
                      hintStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(16),
                      fillColor: Color(0xFF22B7A0),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This Field is required';
                      }
                      else if (int.tryParse(value) == null) {
                        return 'Please enter a valid number';
                      }
                      return null;
                    },
                  ),
                ),
                Positioned(
                  left: 1.0,
                  top: 0.0,
                  width: 300.0,
                  height: 80.0,
                  child:  TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Trip Destination',
                      hintStyle: TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(16),
                      fillColor: Color(0xFF22B7A0),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This Field is required';
                      }
                      return null;
                    },
                  ),
                )
              ]),
        )
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
                      '''Plan Your Trip''',
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


///************* Next ************/
class Next extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  Next({required this.formKey});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState?.validate()==true) {
          // All required fields are filled, proceed to next screen
          Navigator.pushNamed(context, '/PaymentMethod');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: Text(
          '''Next''',
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
