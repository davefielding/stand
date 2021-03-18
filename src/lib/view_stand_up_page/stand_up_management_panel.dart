// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/data.dart';
import '../edit_stand_up_page/edit_stand_up_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../run_stand_up_page/run_stand_up_page_widget.dart';

class StandUpManagementPanel extends StatelessWidget {
  const StandUpManagementPanel(
    this.standUp, {
    Key key,
  }) : super(key: key);

  final StandUp standUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        width: 100,
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
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RunStandUpPageWidget(standUp),
                      ),
                    );
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.play,
                    color: Colors.black,
                    size: 30,
                  ),
                  iconSize: 30,
                ),
                Text(
                  'Start',
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
                    FontAwesomeIcons.pencilAlt,
                    color: Colors.black,
                    size: 30,
                  ),
                  iconSize: 30,
                ),
                Text(
                  'Edit',
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
                    FontAwesomeIcons.shareAlt,
                    color: Colors.black,
                    size: 30,
                  ),
                  iconSize: 30,
                ),
                Text(
                  'Share',
                  style: FlutterFlowTheme.bodyText1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
