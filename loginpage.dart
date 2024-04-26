import 'package:flutter/material.dart';



final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      // ignore: sized_box_for_whitespace
      child: Container(
        width: 360.0,
        height: 800.0,
        child :Form(
          key: formKey,
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
                top: 100.0,
                width: 400.0,
                height: 180.0,
                child: Rectangle1(),
              ),

              Positioned(
                left: 50.0,
                top: 120.0,
                width: 300.0,
                height: 180.0,
                child: Image.asset("assets/images/ninja.png"),
              ),

              const Positioned(
                left: 70,
                top: 320,
                width: 250.0,
                height: 80.0,
                child: Id(),
              ),

              const Positioned(
                left: 70,
                top: 400,
                width: 250.0,
                height: 80.0,
                child: Password(),
              ),

              // ignore: prefer_const_constructors
              Positioned(
                left: 190,
                top: 480,
                width: 250.0,
                height: 40.0,
                child: const ForgetPassword(),
              ),
              Positioned(
                left: 220,
                top: 35.0,
                width: 130.0,
                height: 28.0,
                child: Create(),
              ),
               Positioned(
                left: 140,
                top: 520,
                width: 100.0,
                height: 30.0,
                child: SignIn(formKey:formKey),
              ),
              const Positioned(
                left: 0.0,
                top: 620,
                width: 400.0,
                height: 100.0,
                child: Rectangle2(),
              ),
              const Positioned(
                left: 30.0,
                top: 650.0,
                width: 221.0,
                height: 28.0,
                child: Poweredby(),
              ),

              const Positioned(
                left: 170.0,
                top: 640.0,
                width: 143.0,
                height: 55.0,
                child: SATA(),
              ),
            ]),
      ),
     ) ));
  }
}

class Rectangle2 extends StatelessWidget {
  const Rectangle2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      height: 100.0,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Container(
          color: const Color.fromARGB(255, 68, 61, 59),
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Rectangle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 320.0,
      height: 100.0,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Container(
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 68, 61, 59),
        ),
      ),
    );
  }
}

class SATA extends StatelessWidget {
  const SATA({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''SATA''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.25,
        fontSize: 40.0,
        fontFamily: 'Inder',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 248, 249, 255),
      ),
    );
  }
}

class Poweredby extends StatelessWidget {
  const Poweredby({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '''Powered by ''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: TextStyle(
        height: 1.5,
        fontSize: 16.0,
        fontFamily: 'Laila',
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 242, 242, 247),
      ),
    );
  }
}

//ignore: use_key_in_widget_constructors
class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/CreateAcc'),
      child: const Text(
        '''Create Account ''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        // ignore: prefer_const_constructors
        style: TextStyle(
          height: 2.0,
          fontSize: 15.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 252, 253, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}

class Id extends StatelessWidget {
  const Id({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Email',
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
                  if (value!.isEmpty )
                  {
                    return "This Field is Required";
                  }
                else  if (!RegExp(r'^[a-zA-Z0-9.]+@gmail\.com$').hasMatch(value)) {
                    return "Invalid Email";
                  
                  }
                   
                  else {
                    return null;
                  }
                }),
          ],
        ),
      ),
    );
  }
}

class Password extends StatelessWidget {
  const Password({super.key});



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
              hintText: 'Password',
              // ignore: prefer_const_constructors
              hintStyle:
                  TextStyle(fontSize: 16, color: Color.fromARGB(255, 9, 4, 4)),

              filled: true,

              fillColor: Color(0xFF22B7A0),

              contentPadding: EdgeInsets.all(10),
            ),
               autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.isEmpty ) {
                return "This Field is Required";
              } 
               else if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$").hasMatch(value)) {
                return " Wrong Input  ";
              }else {
                return null;
              }
            },
          ),
        ],
      ),
    ));
  }
}

class SignIn extends StatelessWidget {
 final GlobalKey<FormState> formKey;

  const SignIn({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    
          
         onTap: () {
        if (formKey.currentState?.validate()==true) {
          
          Navigator.pushNamed(context, '/MainPage');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFF22B7A0),
        ),
        alignment: Alignment.center,
        child: const Text(
          '''Sign In''',
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.2,
            fontSize: 17.0,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Colors.black,

            /* letterSpacing: 0.0, */
          ),
        ),
      )
  );
  }
}

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/Forget'),
      child: const Text(
        'Forget Password',
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Inter',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
