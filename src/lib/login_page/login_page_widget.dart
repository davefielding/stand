// @dart=2.9
import 'package:flutter/material.dart';

import 'sign_in_panel.dart';

class LoginPageWidget extends StatefulWidget {
  LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -1),
              child: Image.asset(
                'assets/images/lighthouse.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(),
                ),
                const Expanded(
                  flex: 3,
                  child: SignInPanel(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
