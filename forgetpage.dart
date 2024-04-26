import 'package:flutter/material.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Material(
        child: ClipRRect(
            borderRadius: BorderRadius.zero,
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 360.0,
              height: 800.0,
              child: Form(
                key: _formKey,
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
                          height: 190.0,
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: 320.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.zero,
                              child: Container(
                                // ignore: prefer_const_constructors
                                color: Color.fromARGB(255, 68, 61, 59),
                              ),
                            ),
                          )),

                      Positioned(
                        left: 30.0,
                        top: 90.0,
                        width: 300.0,
                        height: 200.0,
                        child: Image.asset("assets/images/ninja.png"),
                      ),

                      const Positioned(
                        left: 60,
                        top: 380,
                        width: 300.0,
                        height: 80.0,
                        child: gmail(),
                      ),

                      const Positioned(
                        left: 60,
                        top: 450,
                        width: 300.0,
                        height: 80.0,
                        child: verification(),
                      ),
                      const Positioned(
                        left: 60,
                        top: 580,
                        width: 300.0,
                        height: 80.0,
                        child: NewPassword(),
                      ),

                      // ignore: prefer_const_constructors
                      Positioned(
                        left: 170,
                        top: 530,
                        width: 280.0,
                        height: 60.0,
                        child: const resend(),
                      ),

                      Positioned(
                        left: 290,
                        top: 700,
                        width: 100.0,
                        height: 30.0,
                        child: Next(formKey: _formKey),
                      ),
                      Positioned(
                        left: 90,
                        top: 700,
                        width: 100.0,
                        height: 30.0,
                        child: Back(),
                      ),
                    ]),
              ),
            )));
  }
}

//ignore: use_key_in_widget_constructors
class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: prefer_const_constructors
      child: Text(
        ''' Forget Password ''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        // ignore: prefer_const_constructors
        style: TextStyle(
          height: 4.0,
          fontSize: 20.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          color: const Color.fromARGB(255, 252, 253, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class gmail extends StatelessWidget {
  const gmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: '@gmail.com',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 9, 4, 4),
                  ),
                  filled: true,
                  fillColor: Color(0xFF22B7A0),
                  contentPadding: EdgeInsets.all(10),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This field can't be empty ";
                  } else if (!RegExp(r'^[a-zA-Z0-9.]+@gmail\.com$')
                      .hasMatch(value)) {
                    return " wrong Email Pattern ";
                  } else {
                    return null;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class verification extends StatelessWidget {
  const verification({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
              hintText: 'Verification-Code',
              // ignore: prefer_const_constructors
              hintStyle:
                  TextStyle(fontSize: 17, color: Color.fromARGB(255, 9, 4, 4)),

              // ignore: prefer_const_constructors
              filled: true,
              // ignore: prefer_const_constructors
              fillColor: Color(0xFF22B7A0),
              // ignore: prefer_const_constructors
              contentPadding: EdgeInsets.all(1),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return "This field can't be empty";
              } else if (!RegExp(r"^\d{4}$").hasMatch(value)) {
                return "4 digit code required";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    ));
  }
}

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),

              hintText: 'New Password ',

              hintStyle:
                  TextStyle(fontSize: 16, color: Color.fromARGB(255, 9, 4, 4)),

              // ignore: prefer_const_constructors
              filled: true,
              // ignore: prefer_const_constructors
              fillColor: Color(0xFF22B7A0),
              // ignore: prefer_const_constructors
              contentPadding: EdgeInsets.all(10),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter an 8 digit Password";
              } else if (!RegExp(
                      r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$")
                  .hasMatch(value)) {
                return "Password is not strong enough";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    ));
  }
}

// ignore: camel_case_types
class resend extends StatelessWidget {
  const resend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/forgetpassword'),
      child: const Text(
        ' Resend',
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Inter',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}

//////
///

class Next extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const Next({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState?.validate() == true) {
          Navigator.pushNamed(context, '/Login');
        }
      },
      child: const Text(
        'Next',
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Inter',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}


class Back extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/Login'),
      child: const Text(
        'Back',
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Inter',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}