// @dart=2.9
import '../edit_stand_up_page/edit_stand_up_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../run_stand_up_page/run_stand_up_page_widget.dart';
import '../view_stand_ups/view_stand_ups_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewStandUpPageWidget extends StatefulWidget {
  ViewStandUpPageWidget({Key key}) : super(key: key);

  @override
  _ViewStandUpPageWidgetState createState() => _ViewStandUpPageWidgetState();
}

class _ViewStandUpPageWidgetState extends State<ViewStandUpPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RunStandUpPageWidget(),
                              ),
                            );
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.play,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Start',
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
                                builder: (context) => EditStandUpPageWidget(),
                              ),
                            );
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.pencilAlt,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Edit',
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
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.shareAlt,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Share',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                          ),
                        )
                      ],
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
                    trailing: Icon(
                      Icons.check_circle,
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
                    trailing: Icon(
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
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
                      Icons.check_circle,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 24,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
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
