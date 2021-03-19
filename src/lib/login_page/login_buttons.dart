// @dart=2.9
import 'package:flutter/material.dart';
import 'package:stand/auth/facebook_auth.dart';
import 'package:stand/auth/google_auth.dart';
import 'package:stand/flutter_flow/flutter_flow_theme.dart';
import '../l10n/l10n.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicLoginButton(
      image: const AssetImage(
        'assets/images/google-logo.png',
      ),
      onPressed: () async {
        await signInWithGoogle(context);
      },
    );
  }
}

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasicLoginButton(
      image: const AssetImage(
        'assets/images/facebook-logo.png',
      ),
      onPressed: () async {
        await signInWithFacebook(context);
      },
    );
  }
}

class BasicLoginButton extends StatelessWidget {
  const BasicLoginButton({
    Key key,
    this.image,
    this.onPressed,
  }) : super(key: key);

  final ImageProvider image;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: onPressed != null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextButton.icon(
          icon: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          label: Text(context.l10n.signInButtonCaption),
          style: FlutterFlowTheme.flatButtonStyle,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
