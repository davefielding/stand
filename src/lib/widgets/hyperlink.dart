import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class Hyperlink extends StatelessWidget {
  const Hyperlink(
    this.text, {
    this.onTap,
    Key? key,
  }) : super(key: key);

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: FlutterFlowTheme.hyperlinkText,
      ),
    );
  }
}
