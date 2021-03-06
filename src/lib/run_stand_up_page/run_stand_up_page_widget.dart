// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../data/data.dart';
import '../edit_stand_up_page/edit_stand_up_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../view_stand_ups/view_stand_ups_widget.dart';
import '../widgets/stand_app_bar.dart';

class RunStandUpPageWidget extends StatefulWidget {
  RunStandUpPageWidget(this.standup, {Key key}) : super(key: key);

  final StandUp standup;

  @override
  _RunStandUpPageWidgetState createState() => _RunStandUpPageWidgetState();
}

class _RunStandUpPageWidgetState extends State<RunStandUpPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewStandUpsWidget(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                alignment: const Alignment(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    StandAppBar(subtitle: widget.standup.name),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: CachedNetworkImageProvider(
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
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 65,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: const Alignment(0, 0),
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
                          icon: const FaIcon(
                            FontAwesomeIcons.backward,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Previous',
                          style: FlutterFlowTheme.bodyText1,
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
                          icon: const FaIcon(
                            FontAwesomeIcons.pause,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Pause',
                          style: FlutterFlowTheme.bodyText1,
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
                          icon: const FaIcon(
                            FontAwesomeIcons.stop,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Stop',
                          style: FlutterFlowTheme.bodyText1,
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.forward,
                            color: Colors.black,
                            size: 30,
                          ),
                          iconSize: 30,
                        ),
                        Text(
                          'Next',
                          style: FlutterFlowTheme.bodyText1,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: const Alignment(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Current Update:',
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Text(
                      'Dave',
                      style: FlutterFlowTheme.title1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                      child: Text(
                        'Time Remaining',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ),
                    Text(
                      '15s',
                      style: FlutterFlowTheme.title1,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: const Alignment(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Up Next',
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Text(
                      'Baur',
                      style: FlutterFlowTheme.title1,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
