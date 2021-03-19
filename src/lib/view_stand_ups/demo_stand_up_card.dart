// @dart=2.9
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../l10n/l10n.dart';
import '../view_stand_up_page/view_stand_up_page_widget.dart';
import 'stand_up_card.dart';

class DemoStandUpCard extends StatelessWidget {
  const DemoStandUpCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandUpCard.fromValues(
      title: context.l10n.demoStandUpName,
      subtitle: context.l10n.demoStandUpSubTitle,
      image: const CachedNetworkImageProvider(
          'https://images.unsplash.com/photo-1575535468632-345892291673?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
      onTap: () async {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ViewStandUpPageWidget(
              StandUpBuilder().build(),
            ),
          ),
        );
      },
      onDelete: () {
        print('Delete pressed ...');
      },
      onShare: () {
        print('Share pressed ...');
      },
    );
  }
}
