// @dart=2.9
import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../l10n/l10n.dart';

class StandAppBar extends StatelessWidget {
  const StandAppBar({
    Key key,
    this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  final Function onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: const BoxDecoration(
          color: FlutterFlowTheme.appBackground,
        ),
        alignment: const Alignment(0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? context.l10n.appTitle,
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.title1,
                  ),
                  Text(
                    subtitle ?? context.l10n.appSubTitle,
                    style: FlutterFlowTheme.bodyText1,
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1586892477901-f70e288a7318?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8c2NydW18ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
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
    );
  }
}
