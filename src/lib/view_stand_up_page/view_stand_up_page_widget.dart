// @dart=2.9
import 'package:flutter/material.dart';
import 'package:stand/view_stand_up_page/stand_up_participant_tile.dart';

import '../backend/backend.dart';
import '../view_stand_ups/view_stand_ups_widget.dart';
import '../widgets/stand_app_bar.dart';
import 'stand_up_management_panel.dart';

class ViewStandUpPageWidget extends StatelessWidget {
  ViewStandUpPageWidget(this.standup, {Key key}) : super(key: key);

  final Standups standup;

  @override
  Widget build(BuildContext context) {
    final participants = standup.participants.values
        .map((p) => StandUpParticipantTile(
              p.name,
            ))
        .toList();

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StandAppBar(
              onTap: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewStandUpsWidget(),
                  ),
                );
              },
            ),
            StandUpManagementPanel(standup),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: participants,
              ),
            )
          ],
        ),
      ),
    );
  }
}
