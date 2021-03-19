import 'package:flutter/material.dart';
import 'package:stand/flutter_flow/flutter_flow_theme.dart';
import 'package:stand/flutter_flow/flutter_flow_widgets.dart';
import '../l10n/l10n.dart';

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: FFButtonWidget(
        onPressed: onPressed,
        text: context.l10n.signInButtonCaption,
        options: FFButtonOptions(
          width: 300,
          height: 50,
          color: FlutterFlowTheme.primaryColor,
          textStyle: FlutterFlowTheme.contrastText,
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
          borderRadius: 25,
        ),
      ),
    );
  }
}
