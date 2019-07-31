import 'package:flutter/material.dart';
import 'package:flow_login_flutter/src/screens/login_screen/login_form_fields.dart';
import 'package:flare_flutter/flare_actor.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double paddingTopEmailField = 50;
          double paddingTopPasswordField = 30;

          if (constraints.constrainHeight() <= 300) {
              paddingTopEmailField = 5;
              paddingTopPasswordField = 15;
            }

          return Stack(
            children: <Widget>[
              FlareActor(
                "assets/animations/flow_bkg.flr",
                animation: "Flow",
                color: Colors.grey,
                fit: BoxFit.contain,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: loginText(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Form(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              emailField(paddingTop: paddingTopEmailField),
                              passwordField(paddingTop: paddingTopPasswordField),
                              submitButton(context),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget loginText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text("Welcome,",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                )),
          ),
        ),
        Text(
          "Sign in to continue",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
