import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:komik_app/home/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _unfocusedColor = Colors.grey[600];
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _usernameFocusNode.addListener(() {
      setState(() {
        //Redraw so that the username label reflects the focus state
      });
    });
    _passwordFocusNode.addListener(() {
      setState(() {
        //Redraw so that the password label reflects the focus state
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            SizedBox(height: 80.0,),
            Column(
              children: [
                Text('LOGIN', style: Theme.of(context).textTheme.headline5),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                    color: _usernameFocusNode.hasFocus ?
                    Theme.of(context).accentColor : _unfocusedColor
                )
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                  labelStyle: TextStyle(
                      color: _passwordFocusNode.hasFocus ?
                      Theme.of(context).accentColor : _unfocusedColor
                  )
              ),
              obscureText: true,
              focusNode: _usernameFocusNode,
            ),
            ButtonBar(
              children: [
                RaisedButton(
                  elevation: 8.0,
                  child: Text('Login'),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Home(_usernameController.text);
                    }));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}