// @dart=2.9
import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../l10n/l10n.dart';

class AddNewStandUpButton extends StatelessWidget {
  const AddNewStandUpButton({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.tertiaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              l10n.addNewStandUpCaption,
              style: FlutterFlowTheme.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
