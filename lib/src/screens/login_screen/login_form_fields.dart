import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Widget emailField({double paddingTop}) {
  return Padding(
    padding: EdgeInsets.only(top: paddingTop == null ? 30 : paddingTop),
    child: Material(
      elevation: 0,
      shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "email@example.com",
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.black87.withOpacity(0.5)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding:
              EdgeInsets.only(top: 16, bottom: 16, left: 10),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        cursorColor: Color(0xfffa4e88),
      ),
    ),
  );
}

Widget passwordField({double paddingTop}) {
  return Padding(
    padding: EdgeInsets.only(top: paddingTop == null ? 30 : paddingTop),
    child: Material(
      elevation: 0,
      shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Container(padding: EdgeInsets.all(10), child: Image.asset("assets/icons/user.png", height: 1, color: Colors.black87.withOpacity(0.5),),),
          hintText: "password",
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.black87.withOpacity(0.5)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding:
              EdgeInsets.only(top: 16.0, bottom: 16, left: 10,),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        obscureText: true,
        cursorColor: Color(0xfffa4e88),
      ),
    ),
  );
}

Widget submitButton(context) {
  return Expanded(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: RaisedButton(
          elevation: 0,
          highlightElevation: 10,
          color: Color(0xfffa4e88),
          highlightColor: Color(0xfffa4e88).withOpacity(0.7),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
