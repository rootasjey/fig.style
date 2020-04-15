import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:memorare/components/loading.dart';
import 'package:memorare/components/web/fade_in_y.dart';
import 'package:memorare/router/route_names.dart';
import 'package:memorare/router/router.dart';
import 'package:memorare/state/colors.dart';
import 'package:memorare/state/user_state.dart';
import 'package:memorare/utils/app_localstorage.dart';
import 'package:memorare/utils/snack.dart';

class Signin extends StatefulWidget {
  @override
  SigninState createState() => SigninState();
}

class SigninState extends State<Signin> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  double beginY = 100.0;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: stateColors.primary,
        title: Text(
          'Sign in',
        )
      ),
      body: body(),
    );
  }

  Widget body() {
    if (isLoading) {
      return LoadingComponent(title: 'Signing in...',);
    }

    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    FadeInY(
                      delay: 1.0,
                      beginY: beginY,
                      child: subtitle(),
                    ),

                    FadeInY(
                      delay: 2.0,
                      beginY: beginY,
                      child: emailInput(),
                    ),

                    FadeInY(
                      delay: 3.0,
                      beginY: beginY,
                      child: passwordInput(),
                    ),

                    FadeInY(
                      delay: 4.0,
                      beginY: beginY,
                      child: gotoSignUpButton(),
                    ),

                    FadeInY(
                      delay: 5.0,
                      beginY: beginY,
                      child: validationButton(),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ],
    );
  }

  Widget emailInput() {
    return Padding(
      padding: EdgeInsets.only(top: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: stateColors.primary),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: stateColors.primary,),
              ),
              labelText: 'Email',
              labelStyle: TextStyle(color: stateColors.primary,),
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              email = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Email cannot be empty';
              }

              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget gotoSignUpButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: FlatButton(
        onPressed: () {
          FluroRouter.router.navigateTo(context, SignupRoute);
        },
        child: Text(
          "I don't have an account"
        )
      ),
    );
  }

  Widget passwordInput() {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline, color: stateColors.primary,),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: stateColors.primary,),
              ),
              labelText: 'Password',
              labelStyle: TextStyle(color: stateColors.primary,),
            ),
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'Password cannot be empty';
              }

              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget subtitle() {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        'Sign in into your existing account.',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget validationButton() {
    return Padding(
      padding: EdgeInsets.only(top: 100.0),
      child: FlatButton(
        onPressed: () {
          signin();
        },
        shape: RoundedRectangleBorder(
          side: BorderSide(color: stateColors.primary),
          borderRadius: BorderRadius.circular(2.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(Icons.arrow_forward,),
              )
            ],
          )
        ),
      ),
    );
  }

  Future signin() async {
    setState(() {
      isLoading = true;
    });

    try {
      final authResult = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

      if (authResult.user == null) {
        throw Error();
      }

      final userAuth = authResult.user;

      appLocalStorage.saveCredentials(email: email, password: password);
      appLocalStorage.saveUserName(userAuth.displayName);
      appLocalStorage.saveUserUid(userAuth.uid);

      userState.setUserConnected();

      setState(() {
        isLoading = false;
      });

      FluroRouter.router.navigateTo(context, HomeRoute);

    } catch (error) {
      setState(() {
        isLoading = false;
      });

      showSnack(
        context: context,
        message: 'Invalid email or password',
        type: SnackType.error,
      );
    }
  }
}
