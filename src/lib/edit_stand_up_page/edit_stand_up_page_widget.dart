// @dart=2.9
import '../flutter_flow/flutter_flow_theme.dart';
import '../view_stand_up_page/view_stand_up_page_widget.dart';
import '../view_stand_ups/view_stand_ups_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EditStandUpPageWidget extends StatefulWidget {
  EditStandUpPageWidget({Key key}) : super(key: key);

  @override
  _EditStandUpPageWidgetState createState() => _EditStandUpPageWidgetState();
}

class _EditStandUpPageWidgetState extends State<EditStandUpPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: 'FX eCom EMEA Stand-Up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewStandUpsWidget(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STAND',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'FX eCom EMEA Stand-Up',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1589652717521-10c0d092dea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y29tcHV0ZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                width: 100,
                height: 65,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment(0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Enter Stand-Up Name',
                      hintStyle: FlutterFlowTheme.subtitle1.override(
                        fontFamily: 'Poppins',
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.subtitle1.override(
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                width: 100,
                height: 65,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment(0, 0),
                      child: IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.minus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'START TIME',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          '10:00 AM',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment(0, 0),
                      child: IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                width: 100,
                height: 65,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment(0, 0),
                      child: IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.minus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'DURATION',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          '45s',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment(0, 0),
                      child: IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                width: 100,
                height: 65,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment(0, 0),
                      child: IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.minus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ORDER',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'RANDOM',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.tertiaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment(0, 0),
                      child: IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.userAlt,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Dave',
                      style: TextStyle(),
                    ),
                    trailing: FaIcon(
                      FontAwesomeIcons.trashAlt,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.userAlt,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Baur',
                      style: TextStyle(),
                    ),
                    trailing: FaIcon(
                      FontAwesomeIcons.trashAlt,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Pawel',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Andrada',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Siri',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Lax',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Ioannis',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Yousaf',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Serena',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Brad',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Melinda',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    title: Text(
                      'Graham',
                      style: TextStyle(),
                    ),
                    trailing: Icon(
                      Icons.delete,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              alignment: Alignment(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                      Text(
                        'Add',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewStandUpPageWidget(),
                            ),
                          );
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.check,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                      Text(
                        'Save',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewStandUpPageWidget(),
                            ),
                          );
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.ban,
                          color: Colors.black,
                          size: 30,
                        ),
                        iconSize: 30,
                      ),
                      Text(
                        'Cancel',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
