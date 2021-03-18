// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class StandUpParticipantTile extends StatelessWidget {
  const StandUpParticipantTile(
    this.name, {
    Key key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const FaIcon(
        FontAwesomeIcons.userAlt,
        color: Colors.black,
        size: 24,
      ),
      title: Text(name),
      trailing: const Icon(
        Icons.check_circle,
        color: FlutterFlowTheme.tertiaryColor,
        size: 24,
      ),
      tileColor: const Color(0xFFF5F5F5),
      dense: false,
    );
  }
}
