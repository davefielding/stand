// @dart=2.9
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/data.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class StandUpCard extends StatelessWidget {
  const StandUpCard.fromValues({
    @required this.title,
    this.subtitle,
    this.image,
    this.onTap,
    this.onShare,
    this.onDelete,
    Key key,
  }) : super(key: key);

  StandUpCard.fromStandup(
    StandUp standup, {
    Function onTap,
    Function onDelete,
    Function onShare,
  }) : this.fromValues(
          title: standup.name,
          subtitle: '${standup.participants.length} Members',
          image: CachedNetworkImageProvider(standup.imagePath),
          onTap: onTap,
          onDelete: onDelete,
          onShare: onShare,
        );

  final String title;
  final String subtitle;
  final ImageProvider image;
  final Function onTap;
  final Function onShare;
  final Function onDelete;

  static const double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.cardBackground,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: FlutterFlowTheme.title2,
                    ),
                    Text(
                      subtitle,
                      style: FlutterFlowTheme.bodyText2,
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Visibility(
                  visible: onShare != null,
                  child: IconButton(
                    onPressed: onShare,
                    icon: const FaIcon(
                      FontAwesomeIcons.shareAlt,
                      color: Colors.black,
                      size: iconSize,
                    ),
                    iconSize: iconSize,
                  ),
                ),
                Visibility(
                  visible: onDelete != null,
                  child: IconButton(
                    onPressed: onDelete,
                    icon: const FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.black,
                      size: iconSize,
                    ),
                    iconSize: iconSize,
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
