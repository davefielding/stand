// @dart=2.9
import 'package:flutter/material.dart';
import 'package:stand/widgets/hyperlink.dart';

import '../auth/auth_util.dart';
import '../extensions/context_extensions.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../l10n/l10n.dart';
import '../widgets/text_input_field.dart';
import 'email_login_button.dart';
import 'login_buttons.dart';

class SignInPanel extends StatefulWidget {
  const SignInPanel({
    Key key,
  }) : super(key: key);

  @override
  _SignInPanelState createState() => _SignInPanelState();
}

class _SignInPanelState extends State<SignInPanel> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.appBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextInputField(
                  controller: emailTextController,
                  hintText: context.l10n.emailTextboxHint,
                ),
                TextInputField(
                  controller: passwordTextController,
                  hintText: context.l10n.passwordTextboxHint,
                  obscureText: true,
                ),
                EmailLoginButton(
                  onPressed: () async {
                    final success = await signInWithEmail(
                      context,
                      emailTextController.text,
                      passwordTextController.text,
                    );
                    if (!success) {
                      return;
                    }
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
                Hyperlink(
                  context.l10n.forgotPasswordLinkCaption,
                  onTap: () => context.showSnackMessage(
                    context.l10n.comingSoon,
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FacebookLoginButton(),
                      const GoogleLoginButton(),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        context.l10n.noAccountInfoIntro,
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ),
                    Hyperlink(
                      context.l10n.signUpLinkCaption,
                      onTap: () => context.showSnackMessage(
                        context.l10n.comingSoon,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
